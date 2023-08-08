from transformers import GPT2LMHeadModel, GPT2Tokenizer

# Load pre-trained model and tokenizer
model_name = "gpt2"
tokenizer = GPT2Tokenizer.from_pretrained(model_name)
model = GPT2LMHeadModel.from_pretrained(model_name)

# Create a prompt text
prompt_text = "To most people's surprise, economics is really about"

# Tokenize the input text
input_ids = tokenizer.encode(prompt_text, return_tensors='pt')

# Generate a response from the model, and stop when the eos_token is encountered
output = model.generate(input_ids, max_length=100, eos_token_id=tokenizer.eos_token_id)

# Decode the response
generated_text = tokenizer.decode(output[0], skip_special_tokens=True)

print(generated_text)

