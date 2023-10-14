gg_box <-  function(data, feature) {
  ggplot(data, aes(x = .data[[feature]], y = Price)) +
    geom_boxplot(colour = '#145369', fill = '#2596be') + 
    ggtitle(deparse(substitute(data)) , feature) + 
    theme_classic() +
    theme(axis.text.x = element_text(angle=45, hjust = 1, vjust = 1),
          plot.title = element_text(hjust = 0.5))
    
}
