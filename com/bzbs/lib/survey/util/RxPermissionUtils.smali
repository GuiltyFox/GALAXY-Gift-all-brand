.class public Lcom/bzbs/lib/survey/util/RxPermissionUtils;
.super Ljava/lang/Object;
.source "RxPermissionUtils.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:[Ljava/lang/String;

.field private e:Lcom/bzbs/lib/survey/util/AddOnPermissions;


# direct methods
.method private constructor <init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)V
    .registers 5

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->a(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->a:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->b(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->b:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->c(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->c:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->d(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->d:[Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->e(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)Lcom/bzbs/lib/survey/util/AddOnPermissions;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->e:Lcom/bzbs/lib/survey/util/AddOnPermissions;

    .line 31
    invoke-static {p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->f(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)I

    move-result v0

    .line 32
    invoke-static {p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->g(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)I

    move-result v1

    .line 34
    if-eqz v0, :cond_33

    .line 35
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->c:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->b:Ljava/lang/String;

    .line 37
    :cond_33
    if-eqz v1, :cond_3d

    .line 38
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->b:Ljava/lang/String;

    .line 41
    :cond_3d
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->a()V

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;Lcom/bzbs/lib/survey/util/RxPermissionUtils$1;)V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;-><init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/tbruyelle/rxpermissions/RxPermissions;
    .registers 3

    .prologue
    .line 242
    invoke-static {p0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a(Landroid/content/Context;)Lcom/tbruyelle/rxpermissions/RxPermissions;

    move-result-object v0

    .line 243
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a(Z)V

    .line 244
    return-object v0
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->b()V

    return-void
.end method

.method static synthetic b(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->a(Landroid/content/Context;)Lcom/tbruyelle/rxpermissions/RxPermissions;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->d:[Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a([Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;-><init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)V

    new-instance v2, Lcom/bzbs/lib/survey/util/RxPermissionUtils$3;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$3;-><init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)V

    new-instance v3, Lcom/bzbs/lib/survey/util/RxPermissionUtils$4;

    invoke-direct {v3, p0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$4;-><init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)V

    .line 70
    invoke-virtual {v0, v1, v2, v3}, Lrx/Observable;->a(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscription;

    .line 133
    return-void
.end method

.method static synthetic c(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Lcom/bzbs/lib/survey/util/AddOnPermissions;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->e:Lcom/bzbs/lib/survey/util/AddOnPermissions;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->a:Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 47
    :try_start_4
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->c:Landroid/content/Context;

    sget v2, Lcom/bzbs/lib/survey/R$style;->DialogPermission:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->a:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->a(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->c:Landroid/content/Context;

    sget v2, Lcom/bzbs/lib/survey/R$string;->txt_confirm:I

    .line 50
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bzbs/lib/survey/util/RxPermissionUtils$1;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$1;-><init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->c()Landroid/support/v7/app/AlertDialog;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2c} :catch_2d

    .line 65
    :goto_2c
    return-void

    .line 58
    :catch_2d
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    invoke-direct {p0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->b()V

    goto :goto_2c

    .line 63
    :cond_35
    invoke-direct {p0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->b()V

    goto :goto_2c
.end method
