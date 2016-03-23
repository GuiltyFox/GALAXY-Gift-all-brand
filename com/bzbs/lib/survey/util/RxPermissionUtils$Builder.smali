.class public final Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;
.super Ljava/lang/Object;
.source "RxPermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/util/RxPermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private denyPermission:Ljava/lang/String;

.field private enterPermission:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;

.field private permission:[Ljava/lang/String;

.field private resDenyId:I

.field private resEnterId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    return-void
.end method

.method static synthetic access$000(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->enterPermission:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->denyPermission:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->permission:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)Lcom/bzbs/lib/survey/util/AddOnPermissions;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    .prologue
    .line 248
    iget v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->resDenyId:I

    return v0
.end method

.method static synthetic access$600(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    .prologue
    .line 248
    iget v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->resEnterId:I

    return v0
.end method


# virtual methods
.method public build()Lcom/bzbs/lib/survey/util/RxPermissionUtils;
    .registers 3

    .prologue
    .line 297
    new-instance v0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;-><init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;Lcom/bzbs/lib/survey/util/RxPermissionUtils$1;)V

    return-object v0
.end method

.method public callback(Lcom/bzbs/lib/survey/util/AddOnPermissions;)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;
    .registers 2
    .param p1, "onPermissions"    # Lcom/bzbs/lib/survey/util/AddOnPermissions;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;

    .line 292
    return-object p0
.end method

.method public denyPermission(I)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;
    .registers 2
    .param p1, "resDenyId"    # I

    .prologue
    .line 271
    iput p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->resDenyId:I

    .line 272
    return-object p0
.end method

.method public denyPermission(Ljava/lang/String;)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;
    .registers 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->denyPermission:Ljava/lang/String;

    .line 267
    return-object p0
.end method

.method public enterPermission(I)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;
    .registers 2
    .param p1, "resEnterId"    # I

    .prologue
    .line 276
    iput p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->resEnterId:I

    .line 277
    return-object p0
.end method

.method public enterPermission(Ljava/lang/String;)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;
    .registers 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->enterPermission:Ljava/lang/String;

    .line 262
    return-object p0
.end method

.method public varargs permissions([Ljava/lang/String;)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;
    .registers 2
    .param p1, "val"    # [Ljava/lang/String;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->permission:[Ljava/lang/String;

    .line 287
    return-object p0
.end method

.method public with(Landroid/content/Context;)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;
    .registers 2
    .param p1, "val"    # Landroid/content/Context;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->mContext:Landroid/content/Context;

    .line 282
    return-object p0
.end method
