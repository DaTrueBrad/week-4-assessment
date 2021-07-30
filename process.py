log_file = open("um-server-01.txt")
# This line is opening a file and saving it under a variable name of log_file, for ease of typing in the future.

def sales_reports(log_file):
    # This is a function in python, we called it sale_reports so we can understand what the function will do when it is called. The parameter is set to the variable we created earlier, since we are only working with one file.
    for line in log_file:
    # We will begin looping over the data found inside of the text file. we define each line in the file as a "line"
        line = line.rstrip()
        # Here we are redefining how the line is read, by using amn rstrip command.
        day = line[0:3]
        # this is defining day as all of the letters between index 0 and index 3. This way we can accurately identify and compare what day it is.
        if day == "Mon":
        # This is telling us to now look for the letters "mon" between index 0 and 3. Once it finds those, if will then proceed to the next line...
            print(line)
            # ...and print out the line of information!

sales_reports(log_file)
# This calls the function listed above, and tells it to use the open file's variable as the parameter.