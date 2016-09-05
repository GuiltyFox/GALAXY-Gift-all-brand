.class public final Lcom/samsung/privilege/util/RxPermissionUtils$Builder;
.super Ljava/lang/Object;
.source "RxPermissionUtils.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:[Ljava/lang/String;

.field private f:Lcom/samsung/privilege/util/AddOnPermissions;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/util/RxPermissionUtils$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/privilege/util/RxPermissionUtils$Builder;)Z
    .registers 2

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/samsung/privilege/util/RxPermissionUtils$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/samsung/privilege/util/RxPermissionUtils$Builder;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/samsung/privilege/util/RxPermissionUtils$Builder;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->e:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/samsung/privilege/util/RxPermissionUtils$Builder;)Lcom/samsung/privilege/util/AddOnPermissions;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->f:Lcom/samsung/privilege/util/AddOnPermissions;

    return-object v0
.end method

.method static synthetic g(Lcom/samsung/privilege/util/RxPermissionUtils$Builder;)I
    .registers 2

    .prologue
    .line 231
    iget v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->g:I

    return v0
.end method

.method static synthetic h(Lcom/samsung/privilege/util/RxPermissionUtils$Builder;)I
    .registers 2

    .prologue
    .line 231
    iget v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->h:I

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;
    .registers 2

    .prologue
    .line 270
    iput-object p1, p0, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->d:Landroid/content/Context;

    .line 271
    return-object p0
.end method

.method public a(Lcom/samsung/privilege/util/AddOnPermissions;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;
    .registers 2

    .prologue
    .line 280
    iput-object p1, p0, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->f:Lcom/samsung/privilege/util/AddOnPermissions;

    .line 281
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;
    .registers 2

    .prologue
    .line 255
    iput-object p1, p0, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->c:Ljava/lang/String;

    .line 256
    return-object p0
.end method

.method public a(Z)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;
    .registers 2

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->b:Z

    .line 251
    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;
    .registers 2

    .prologue
    .line 275
    iput-object p1, p0, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->e:[Ljava/lang/String;

    .line 276
    return-object p0
.end method

.method public a()Lcom/samsung/privilege/util/RxPermissionUtils;
    .registers 3

    .prologue
    .line 286
    new-instance v0, Lcom/samsung/privilege/util/RxPermissionUtils;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/util/RxPermissionUtils;-><init>(Lcom/samsung/privilege/util/RxPermissionUtils$Builder;Lcom/samsung/privilege/util/RxPermissionUtils$1;)V

    return-object v0
.end method
