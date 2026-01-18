/* user and group to drop privileges to */
static const char *user  = "random";
static const char *group = "wheel";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "#1b1a27",     /* after initialization */
	[INPUT] =  "#6ba4f6",   /* during input */
	[FAILED] = "#e37ca8",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;
