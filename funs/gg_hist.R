gg_hist <-  function(data, feature) {
  binwidth = (max(data[[feature]]) - min(data[[feature]]))/8
  ggplot(data, aes(x = .data[[feature]])) +
    geom_histogram(colour = '#064470', fill = '#063970', alpha = 0.8, binwidth = binwidth) + 
    ggtitle(deparse(substitute(data)) , feature) +
    theme_classic() +
    theme(plot.title = element_text(hjust = 0.5))

}
