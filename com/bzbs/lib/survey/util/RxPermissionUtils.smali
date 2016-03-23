.class public Lcom/bzbs/lib/survey/util/RxPermissionUtils;
.super Ljava/lang/Object;
.source "RxPermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;
    }
.end annotation


# instance fields
.field private denyPermission:Ljava/lang/String;

.field private enterPermission:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;

.field private permission:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)V
    .registers 5
    .param p1, "builder"    # Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    # getter for: Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->enterPermission:Ljava/lang/String;
    invoke-static {p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->access$000(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->enterPermission:Ljava/lang/String;

    .line 27
    # getter for: Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->denyPermission:Ljava/lang/String;
    invoke-static {p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->access$100(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->denyPermission:Ljava/lang/String;

    .line 28
    # getter for: Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->access$200(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->mContext:Landroid/content/Context;

    .line 29
    # getter for: Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->permission:[Ljava/lang/String;
    invoke-static {p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->access$300(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->permission:[Ljava/lang/String;

    .line 30
    # getter for: Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;
    invoke-static {p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->access$400(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)Lcom/bzbs/lib/survey/util/AddOnPermissions;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;

    .line 31
    # getter for: Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->resDenyId:I
    invoke-static {p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->access$500(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)I

    move-result v0

    .line 32
    .local v0, "resDenyId":I
    # getter for: Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->resEnterId:I
    invoke-static {p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->access$600(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)I

    move-result v1

    .line 34
    .local v1, "resEnterId":I
    if-eqz v0, :cond_33

    .line 35
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->denyPermission:Ljava/lang/String;

    .line 37
    :cond_33
    if-eqz v1, :cond_3d

    .line 38
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->denyPermission:Ljava/lang/String;

    .line 41
    :cond_3d
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->build()V

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;Lcom/bzbs/lib/survey/util/RxPermissionUtils$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;
    .param p2, "x1"    # Lcom/bzbs/lib/survey/util/RxPermissionUtils$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;-><init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Lcom/bzbs/lib/survey/util/AddOnPermissions;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/util/AddOnPermissions;[Ljava/lang/String;)V
    .registers 6
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/bzbs/lib/survey/util/AddOnPermissions;
    .param p5, "x5"    # [Ljava/lang/String;

    .prologue
    .line 17
    invoke-static/range {p0 .. p5}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->request(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/util/AddOnPermissions;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)V
    .registers 1
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->request()V

    return-void
.end method

.method static synthetic access$800(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->denyPermission:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getInstance(Landroid/content/Context;)Lcom/tbruyelle/rxpermissions/RxPermissions;
    .registers 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 242
    invoke-static {p0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->getInstance(Landroid/content/Context;)Lcom/tbruyelle/rxpermissions/RxPermissions;

    move-result-object v0

    .line 243
    .local v0, "mRxPermissions":Lcom/tbruyelle/rxpermissions/RxPermissions;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->setLogging(Z)V

    .line 244
    return-object v0
.end method

.method private request()V
    .registers 5

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->getInstance(Landroid/content/Context;)Lcom/tbruyelle/rxpermissions/RxPermissions;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->permission:[Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->request([Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$2;-><init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)V

    new-instance v2, Lcom/bzbs/lib/survey/util/RxPermissionUtils$3;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$3;-><init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)V

    new-instance v3, Lcom/bzbs/lib/survey/util/RxPermissionUtils$4;

    invoke-direct {v3, p0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$4;-><init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)V

    .line 70
    invoke-virtual {v0, v1, v2, v3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscription;

    .line 133
    return-void
.end method

.method private static varargs request(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/util/AddOnPermissions;[Ljava/lang/String;)V
    .registers 10
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "style"    # I
    .param p2, "enterPermission"    # Ljava/lang/String;
    .param p3, "denyPermission"    # Ljava/lang/String;
    .param p4, "onPermissions"    # Lcom/bzbs/lib/survey/util/AddOnPermissions;
    .param p5, "permission"    # [Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {p0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->getInstance(Landroid/content/Context;)Lcom/tbruyelle/rxpermissions/RxPermissions;

    move-result-object v0

    .line 144
    invoke-virtual {v0, p5}, Lcom/tbruyelle/rxpermissions/RxPermissions;->request([Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;

    invoke-direct {v1, p3, p0, p1, p4}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/bzbs/lib/survey/util/AddOnPermissions;)V

    new-instance v2, Lcom/bzbs/lib/survey/util/RxPermissionUtils$6;

    invoke-direct {v2, p4}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$6;-><init>(Lcom/bzbs/lib/survey/util/AddOnPermissions;)V

    new-instance v3, Lcom/bzbs/lib/survey/util/RxPermissionUtils$7;

    invoke-direct {v3}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$7;-><init>()V

    .line 145
    invoke-virtual {v0, v1, v2, v3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscription;

    .line 203
    return-void
.end method

.method public static varargs request(Landroid/content/Context;Lcom/bzbs/lib/survey/util/AddOnPermissions;[Ljava/lang/String;)V
    .registers 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "onPermissions"    # Lcom/bzbs/lib/survey/util/AddOnPermissions;
    .param p2, "permission"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-static {p0, v0, v0, p1, p2}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->request(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/util/AddOnPermissions;[Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static varargs request(Landroid/content/Context;Ljava/lang/String;Lcom/bzbs/lib/survey/util/AddOnPermissions;[Ljava/lang/String;)V
    .registers 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "enterPermission"    # Ljava/lang/String;
    .param p2, "onPermissions"    # Lcom/bzbs/lib/survey/util/AddOnPermissions;
    .param p3, "permission"    # [Ljava/lang/String;

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->request(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/util/AddOnPermissions;[Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public static varargs request(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/util/AddOnPermissions;[Ljava/lang/String;)V
    .registers 14
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "enterPermission"    # Ljava/lang/String;
    .param p2, "denyPermission"    # Ljava/lang/String;
    .param p3, "onPermissions"    # Lcom/bzbs/lib/survey/util/AddOnPermissions;
    .param p4, "permission"    # [Ljava/lang/String;

    .prologue
    .line 206
    if-eqz p1, :cond_39

    .line 208
    :try_start_2
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    sget v1, Lcom/bzbs/lib/survey/R$style;->DialogPermission:I

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 209
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 210
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    sget v0, Lcom/bzbs/lib/survey/R$string;->txt_confirm:I

    .line 212
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$8;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/util/AddOnPermissions;[Ljava/lang/String;)V

    invoke-virtual {v7, v8, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_29} :catch_2a

    .line 227
    :goto_29
    return-void

    .line 220
    :catch_2a
    move-exception v6

    .line 221
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    sget v1, Lcom/bzbs/lib/survey/R$style;->DialogPermission:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->request(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/util/AddOnPermissions;[Ljava/lang/String;)V

    goto :goto_29

    .line 225
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_39
    sget v1, Lcom/bzbs/lib/survey/R$style;->DialogPermission:I

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->request(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/util/AddOnPermissions;[Ljava/lang/String;)V

    goto :goto_29
.end method

.method public static varargs request(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/util/AddOnPermissions;[Ljava/lang/String;)V
    .registers 12
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "denyOnly"    # Z
    .param p2, "enterPermission"    # Ljava/lang/String;
    .param p3, "denyPermission"    # Ljava/lang/String;
    .param p4, "onPermissions"    # Lcom/bzbs/lib/survey/util/AddOnPermissions;
    .param p5, "permission"    # [Ljava/lang/String;

    .prologue
    .line 234
    if-eqz p1, :cond_d

    .line 235
    sget v1, Lcom/bzbs/lib/survey/R$style;->DialogPermission:I

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->request(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/util/AddOnPermissions;[Ljava/lang/String;)V

    .line 239
    :goto_c
    return-void

    .line 237
    :cond_d
    invoke-static {p0, p2, p3, p4, p5}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->request(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/util/AddOnPermissions;[Ljava/lang/String;)V

    goto :goto_c
.end method


# virtual methods
.method public build()V
    .registers 5

    .prologue
    .line 45
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->enterPermission:Ljava/lang/String;

    if-eqz v1, :cond_35

    .line 47
    :try_start_4
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->mContext:Landroid/content/Context;

    sget v3, Lcom/bzbs/lib/survey/R$style;->DialogPermission:I

    invoke-direct {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->enterPermission:Ljava/lang/String;

    .line 48
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->mContext:Landroid/content/Context;

    sget v3, Lcom/bzbs/lib/survey/R$string;->txt_confirm:I

    .line 50
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bzbs/lib/survey/util/RxPermissionUtils$1;

    invoke-direct {v3, p0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$1;-><init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2c} :catch_2d

    .line 65
    :goto_2c
    return-void

    .line 58
    :catch_2d
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    invoke-direct {p0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->request()V

    goto :goto_2c

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_35
    invoke-direct {p0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->request()V

    goto :goto_2c
.end method
