.class public Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;
.super Landroid/content/ContextWrapper;
.source "CalligraphyContextWrapper.java"


# instance fields
.field private a:Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;

.field private final b:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-static {}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->a()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->g()I

    move-result v0

    iput v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->b:I

    .line 87
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/ContextWrapper;
    .registers 2

    .prologue
    .line 31
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;

    invoke-direct {v0, p0}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 109
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 110
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->a:Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;

    if-nez v0, :cond_1f

    .line 111
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;

    invoke-virtual {p0}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->b:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;IZ)V

    iput-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->a:Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;

    .line 113
    :cond_1f
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->a:Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;

    .line 115
    :goto_21
    return-object v0

    :cond_22
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_21
.end method
