.class public final Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;
.super Ljava/lang/Object;
.source "RxPermissionUtils.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:[Ljava/lang/String;

.field private e:Lcom/bzbs/lib/survey/util/AddOnPermissions;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    return-void
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->d:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)Lcom/bzbs/lib/survey/util/AddOnPermissions;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->e:Lcom/bzbs/lib/survey/util/AddOnPermissions;

    return-object v0
.end method

.method static synthetic f(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)I
    .registers 2

    .prologue
    .line 248
    iget v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->f:I

    return v0
.end method

.method static synthetic g(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;)I
    .registers 2

    .prologue
    .line 248
    iget v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->g:I

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;
    .registers 2

    .prologue
    .line 281
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->c:Landroid/content/Context;

    .line 282
    return-object p0
.end method

.method public a(Lcom/bzbs/lib/survey/util/AddOnPermissions;)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;
    .registers 2

    .prologue
    .line 291
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->e:Lcom/bzbs/lib/survey/util/AddOnPermissions;

    .line 292
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;
    .registers 2

    .prologue
    .line 266
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->b:Ljava/lang/String;

    .line 267
    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;
    .registers 2

    .prologue
    .line 286
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->d:[Ljava/lang/String;

    .line 287
    return-object p0
.end method

.method public a()Lcom/bzbs/lib/survey/util/RxPermissionUtils;
    .registers 3

    .prologue
    .line 297
    new-instance v0, Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;-><init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;Lcom/bzbs/lib/survey/util/RxPermissionUtils$1;)V

    return-object v0
.end method
