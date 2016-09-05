.class public final Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

.field private c:Lcom/bzbs/lib/http/okhttp/HttpRequest;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

.field private h:Lcom/bzbs/lib/http/okhttp/HttpParams;

.field private i:Lcom/bzbs/lib/http/okhttp/HttpHeaders;

.field private j:Ljava/io/File;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:[Ljava/lang/Integer;

.field private n:[Ljava/lang/Integer;

.field private o:Lcom/bzbs/lib/http/okhttp/CacheListener;

.field private p:Lcom/bzbs/lib/http/okhttp/ResponseListener;

.field private q:Lcom/bzbs/lib/http/okhttp/ErrorListener;

.field private r:Ljava/lang/Object;

.field private s:Lcom/bzbs/lib/http/okhttp/FailureListener;

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:Z

.field private y:Ljava/io/InputStream;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    sget-object v0, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;->d:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    .line 715
    iput-boolean v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->t:Z

    .line 717
    iput v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->u:I

    .line 718
    iput v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->v:I

    .line 719
    iput v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->w:I

    .line 720
    iput-boolean v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->x:Z

    .line 722
    iput-boolean v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->z:Z

    .line 725
    return-void
.end method

.method static synthetic a(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->g:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    return-object v0
.end method

.method static synthetic e(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Lcom/bzbs/lib/http/okhttp/HttpParams;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->h:Lcom/bzbs/lib/http/okhttp/HttpParams;

    return-object v0
.end method

.method static synthetic f(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Lcom/bzbs/lib/http/okhttp/HttpHeaders;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->i:Lcom/bzbs/lib/http/okhttp/HttpHeaders;

    return-object v0
.end method

.method static synthetic g(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Ljava/io/File;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->j:Ljava/io/File;

    return-object v0
.end method

.method static synthetic h(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)[Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->m:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic j(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)[Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->n:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic k(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Lcom/bzbs/lib/http/okhttp/ResponseListener;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->p:Lcom/bzbs/lib/http/okhttp/ResponseListener;

    return-object v0
.end method

.method static synthetic l(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Lcom/bzbs/lib/http/okhttp/ErrorListener;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->q:Lcom/bzbs/lib/http/okhttp/ErrorListener;

    return-object v0
.end method

.method static synthetic m(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Lcom/bzbs/lib/http/okhttp/FailureListener;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->s:Lcom/bzbs/lib/http/okhttp/FailureListener;

    return-object v0
.end method

.method static synthetic n(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->r:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic o(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Z
    .registers 2

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->x:Z

    return v0
.end method

.method static synthetic q(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->y:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic r(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Z
    .registers 2

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->t:Z

    return v0
.end method

.method static synthetic s(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Lcom/bzbs/lib/http/okhttp/CacheListener;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->o:Lcom/bzbs/lib/http/okhttp/CacheListener;

    return-object v0
.end method

.method static synthetic t(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Z
    .registers 2

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->z:Z

    return v0
.end method

.method static synthetic u(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    return-object v0
.end method

.method static synthetic v(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic w(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)I
    .registers 2

    .prologue
    .line 693
    iget v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->u:I

    return v0
.end method

.method static synthetic x(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)I
    .registers 2

    .prologue
    .line 693
    iget v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->v:I

    return v0
.end method

.method static synthetic y(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)I
    .registers 2

    .prologue
    .line 693
    iget v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->w:I

    return v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;
    .registers 2

    .prologue
    .line 793
    iput-object p1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->e:Landroid/content/Context;

    .line 794
    return-object p0
.end method

.method public a(Landroid/content/Context;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;
    .registers 2

    .prologue
    .line 798
    iput-object p1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->e:Landroid/content/Context;

    .line 799
    return-object p0
.end method

.method public a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;
    .registers 2

    .prologue
    .line 813
    iput-object p1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->h:Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 814
    return-object p0
.end method

.method public a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;
    .registers 2

    .prologue
    .line 808
    iput-object p1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->g:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 809
    return-object p0
.end method

.method public a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;
    .registers 2

    .prologue
    .line 836
    iput-object p1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->p:Lcom/bzbs/lib/http/okhttp/ResponseListener;

    .line 837
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;
    .registers 2

    .prologue
    .line 803
    iput-object p1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->f:Ljava/lang/String;

    .line 804
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;
    .registers 3

    .prologue
    .line 830
    iput-object p1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->k:Ljava/lang/String;

    .line 831
    iput-object p2, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->j:Ljava/io/File;

    .line 832
    return-object p0
.end method

.method public a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;
    .registers 2

    .prologue
    .line 945
    iput-boolean p1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->z:Z

    .line 946
    return-object p0
.end method

.method public a()Lcom/bzbs/lib/http/okhttp/HttpRequest;
    .registers 2

    .prologue
    .line 950
    new-instance v0, Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;-><init>(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)V

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->c:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 951
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->c:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;
    .registers 6

    .prologue
    .line 823
    invoke-static {p1}, Lcom/bzbs/lib/utils/ValidateUtils;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 826
    :goto_6
    return-object p0

    .line 825
    :cond_7
    new-instance v0, Lcom/bzbs/lib/http/okhttp/HttpHeaders;

    invoke-direct {v0}, Lcom/bzbs/lib/http/okhttp/HttpHeaders;-><init>()V

    const-string/jumbo v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpHeaders;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->i:Lcom/bzbs/lib/http/okhttp/HttpHeaders;

    goto :goto_6
.end method
