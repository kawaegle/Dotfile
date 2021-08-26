local present, colorizer = pcall(require, "colorize")
if not present then
   return
end

colorizer.setup()
