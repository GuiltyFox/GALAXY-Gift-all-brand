.class public Lcom/samsung/privilege/util/RxPermissionUtils;
.super Ljava/lang/Object;
.source "RxPermissionUtils.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:[Ljava/lang/String;

.field private f:Lcom/samsung/privilege/util/AddOnPermissions;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/util/RxPermissionUtils$Builder;)V
    .registers 5

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->a(Lcom/samsung/privilege/util/RxPermissionUtils$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->a:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->b(Lcom/samsung/privilege/util/RxPermissionUtils$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->b:Z

    .line 27
    invoke-static {p1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->c(Lcom/samsung/privilege/util/RxPermissionUtils$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->c:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->d(Lcom/samsung/privilege/util/RxPermissionUtils$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->d:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->e(Lcom/samsung/privilege/util/RxPermissionUtils$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->e:[Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->f(Lcom/samsung/privilege/util/RxPermissionUtils$Builder;)Lcom/samsung/privilege/util/AddOnPermissions;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->f:Lcom/samsung/privilege/util/AddOnPermissions;

    .line 31
    invoke-static {p1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->g(Lcom/samsung/privilege/util/RxPermissionUtils$Builder;)I

    move-result v0

    .line 32
    invoke-static {p1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->h(Lcom/samsung/privilege/util/RxPermissionUtils$Builder;)I

    move-result v1

    .line 34
    if-eqz v0, :cond_39

    .line 35
    iget-object v2, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->d:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->c:Ljava/lang/String;

    .line 37
    :cond_39
    if-eqz v1, :cond_43

    .line 38
    iget-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->c:Ljava/lang/String;

    .line 41
    :cond_43
    invoke-virtual {p0}, Lcom/samsung/privilege/util/RxPermissionUtils;->a()V

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/util/RxPermissionUtils$Builder;Lcom/samsung/privilege/util/RxPermissionUtils$1;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/privilege/util/RxPermissionUtils;-><init>(Lcom/samsung/privilege/util/RxPermissionUtils$Builder;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/tbruyelle/rxpermissions/RxPermissions;
    .registers 3

    .prologue
    .line 225
    invoke-static {p0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a(Landroid/content/Context;)Lcom/tbruyelle/rxpermissions/RxPermissions;

    move-result-object v0

    .line 226
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a(Z)V

    .line 227
    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/util/RxPermissionUtils;)V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/samsung/privilege/util/RxPermissionUtils;->c()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/util/RxPermissionUtils;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/privilege/util/RxPermissionUtils;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/util/RxPermissionUtils;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/privilege/util/RxPermissionUtils;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Boolean;)V
    .registers 6

    .prologue
    .line 74
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_49

    iget-boolean v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->b:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_49

    .line 75
    iget-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->c:Ljava/lang/String;

    if-eqz v0, :cond_43

    .line 78
    :try_start_f
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->d:Landroid/content/Context;

    const v2, 0x7f0d00fc

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 80
    iget-object v1, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 81
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->a(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->d:Landroid/content/Context;

    const v3, 0x7f0903c4

    .line 82
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/util/RxPermissionUtils$2;

    invoke-direct {v3, p0, p1}, Lcom/samsung/privilege/util/RxPermissionUtils$2;-><init>(Lcom/samsung/privilege/util/RxPermissionUtils;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 91
    const-string/jumbo v1, "OK"

    new-instance v2, Lcom/samsung/privilege/util/RxPermissionUtils$3;

    invoke-direct {v2, p0, p1}, Lcom/samsung/privilege/util/RxPermissionUtils$3;-><init>(Lcom/samsung/privilege/util/RxPermissionUtils;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->c()Landroid/support/v7/app/AlertDialog;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_43} :catch_44

    .line 119
    :cond_43
    :goto_43
    return-void

    .line 109
    :catch_44
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43

    .line 116
    :cond_49
    iget-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->f:Lcom/samsung/privilege/util/AddOnPermissions;

    if-eqz v0, :cond_43

    .line 117
    iget-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->f:Lcom/samsung/privilege/util/AddOnPermissions;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/util/AddOnPermissions;->a(Z)V

    goto :goto_43
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->f:Lcom/samsung/privilege/util/AddOnPermissions;

    if-eqz v0, :cond_9

    .line 122
    iget-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->f:Lcom/samsung/privilege/util/AddOnPermissions;

    invoke-virtual {v0}, Lcom/samsung/privilege/util/AddOnPermissions;->a()V

    .line 123
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/util/RxPermissionUtils;)Lcom/samsung/privilege/util/AddOnPermissions;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->f:Lcom/samsung/privilege/util/AddOnPermissions;

    return-object v0
.end method

.method static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/samsung/privilege/util/RxPermissionUtils;->d()V

    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/util/RxPermissionUtils;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->d:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .registers 5

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/privilege/util/RxPermissionUtils;->a(Landroid/content/Context;)Lcom/tbruyelle/rxpermissions/RxPermissions;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->e:[Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a([Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$1;->a(Lcom/samsung/privilege/util/RxPermissionUtils;)Lrx/functions/Action1;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$2;->a(Lcom/samsung/privilege/util/RxPermissionUtils;)Lrx/functions/Action1;

    move-result-object v2

    invoke-static {}, Lcom/samsung/privilege/util/RxPermissionUtils$$Lambda$3;->b()Lrx/functions/Action0;

    move-result-object v3

    .line 71
    invoke-virtual {v0, v1, v2, v3}, Lrx/Observable;->a(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscription;

    .line 126
    return-void
.end method

.method private static synthetic d()V
    .registers 2

    .prologue
    .line 125
    const-string/jumbo v0, "RxPermissionUtils"

    const-string/jumbo v1, "OnComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->a:Ljava/lang/String;

    if-eqz v0, :cond_37

    .line 47
    :try_start_4
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->d:Landroid/content/Context;

    const v2, 0x7f0d00fc

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->a:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->a(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/util/RxPermissionUtils;->d:Landroid/content/Context;

    const v2, 0x7f0903c5

    .line 51
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/util/RxPermissionUtils$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/util/RxPermissionUtils$1;-><init>(Lcom/samsung/privilege/util/RxPermissionUtils;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->c()Landroid/support/v7/app/AlertDialog;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2e} :catch_2f

    .line 66
    :goto_2e
    return-void

    .line 59
    :catch_2f
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    invoke-direct {p0}, Lcom/samsung/privilege/util/RxPermissionUtils;->c()V

    goto :goto_2e

    .line 64
    :cond_37
    invoke-direct {p0}, Lcom/samsung/privilege/util/RxPermissionUtils;->c()V

    goto :goto_2e
.end method
