function [tx_output] = s_rx_out(oversampling,a,lengths,symbols)
m = oversampling;
[transmit_filter,dummy] = sqrt_raised_cosine(a,m,lengths);
transmit_filter = flipud(transmit_filter); %%matched filter
%UPSAMPLE BY m
nsymbols = length(symbols);

nsymbols_upsampled = 1+(nsymbols-1)*m;%length of upsampled symbol sequence
symbols_upsampled = zeros(nsymbols_upsampled,1);%initialize
symbols_upsampled(1:m:nsymbols_upsampled)=symbols;%insert symbols with spacing m
%NOISELESS MODULATED SIGNAL
tx_output = conv(symbols_upsampled,transmit_filter);
