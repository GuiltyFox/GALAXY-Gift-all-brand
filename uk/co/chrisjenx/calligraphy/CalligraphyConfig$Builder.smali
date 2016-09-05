.class public Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;
.super Ljava/lang/Object;
.source "CalligraphyConfig.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_21

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->a:Z

    .line 146
    iput-boolean v1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->b:Z

    .line 150
    sget v0, Luk/co/chrisjenx/calligraphy/R$attr;->fontPath:I

    iput v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->c:I

    .line 154
    iput-boolean v2, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->d:Z

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->e:Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->f:Ljava/util/Map;

    return-void

    :cond_21
    move v0, v2

    .line 142
    goto :goto_c
.end method

.method static synthetic a(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Z
    .registers 2

    .prologue
    .line 134
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->d:Z

    return v0
.end method

.method static synthetic b(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->c:I

    return v0
.end method

.method static synthetic d(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Z
    .registers 2

    .prologue
    .line 134
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->a:Z

    return v0
.end method

.method static synthetic e(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Z
    .registers 2

    .prologue
    .line 134
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->b:Z

    return v0
.end method

.method static synthetic f(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->f:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(I)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 171
    if-eq p1, v0, :cond_6

    :goto_3
    iput p1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->c:I

    .line 172
    return-object p0

    :cond_6
    move p1, v0

    .line 171
    goto :goto_3
.end method

.method public a(Ljava/lang/String;)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;
    .registers 3

    .prologue
    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->d:Z

    .line 184
    iput-object p1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->e:Ljava/lang/String;

    .line 185
    return-object p0

    .line 183
    :cond_c
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public a()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_9
    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->d:Z

    .line 262
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    invoke-direct {v0, p0}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;-><init>(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)V

    return-object v0

    .line 261
    :cond_11
    const/4 v0, 0x0

    goto :goto_9
.end method
