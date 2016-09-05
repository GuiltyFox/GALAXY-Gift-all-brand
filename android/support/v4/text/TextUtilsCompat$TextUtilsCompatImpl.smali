.class Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;
.super Ljava/lang/Object;
.source "TextUtilsCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/text/TextUtilsCompat$1;)V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;-><init>()V

    return-void
.end method

.method private static b(Ljava/util/Locale;)I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    packed-switch v1, :pswitch_data_14

    .line 95
    :goto_10
    return v0

    .line 91
    :pswitch_11
    const/4 v0, 0x1

    goto :goto_10

    .line 88
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/util/Locale;)I
    .registers 4

    .prologue
    .line 63
    if-eqz p1, :cond_2b

    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->a:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 64
    invoke-static {p1}, Landroid/support/v4/text/ICUCompat;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 65
    if-nez v0, :cond_15

    invoke-static {p1}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;->b(Ljava/util/Locale;)I

    move-result v0

    .line 72
    :goto_14
    return v0

    .line 67
    :cond_15
    invoke-static {}, Landroid/support/v4/text/TextUtilsCompat;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {}, Landroid/support/v4/text/TextUtilsCompat;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 69
    :cond_29
    const/4 v0, 0x1

    goto :goto_14

    .line 72
    :cond_2b
    const/4 v0, 0x0

    goto :goto_14
.end method
