.class Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;
.super Ljava/lang/Object;
.source "TextUtilsCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private static b(Ljava/util/Locale;)I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    packed-switch v1, :pswitch_data_14

    .line 100
    :goto_10
    return v0

    .line 96
    :pswitch_11
    const/4 v0, 0x1

    goto :goto_10

    .line 93
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
    .line 66
    if-eqz p1, :cond_27

    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->a:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 67
    invoke-static {p1}, Landroid/support/v4/text/ICUCompat;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 68
    if-nez v0, :cond_15

    invoke-static {p1}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;->b(Ljava/util/Locale;)I

    move-result v0

    .line 77
    :goto_14
    return v0

    .line 72
    :cond_15
    sget-object v1, Landroid/support/v4/text/TextUtilsCompat;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    sget-object v1, Landroid/support/v4/text/TextUtilsCompat;->c:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 74
    :cond_25
    const/4 v0, 0x1

    goto :goto_14

    .line 77
    :cond_27
    const/4 v0, 0x0

    goto :goto_14
.end method
