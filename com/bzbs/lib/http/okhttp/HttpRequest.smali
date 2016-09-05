.class public Lcom/bzbs/lib/http/okhttp/HttpRequest;
.super Lcom/bzbs/lib/http/okhttp/BaseRequest;
.source "HttpRequest.java"


# static fields
.field public static b:I

.field public static c:I

.field public static d:I


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Lokhttp3/Response;

.field private E:I

.field private F:Lokhttp3/Headers;

.field private G:Ljava/lang/String;

.field public e:Z

.field private f:Landroid/app/ProgressDialog;

.field private g:Landroid/app/Dialog;

.field private h:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

.field private i:Lokhttp3/Call;

.field private j:Lokhttp3/OkHttpClient;

.field private k:Landroid/content/Context;

.field private l:Ljava/lang/String;

.field private m:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

.field private n:Lcom/bzbs/lib/http/okhttp/HttpParams;

.field private o:Lcom/bzbs/lib/http/okhttp/HttpHeaders;

.field private p:Ljava/io/File;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/Object;

.field private s:[Ljava/lang/Integer;

.field private t:[Ljava/lang/Integer;

.field private u:Lcom/bzbs/lib/http/okhttp/CacheListener;

.field private v:Lcom/bzbs/lib/http/okhttp/ResponseListener;

.field private w:Lcom/bzbs/lib/http/okhttp/ErrorListener;

.field private x:Lcom/bzbs/lib/http/okhttp/FailureListener;

.field private y:Ljava/lang/String;

.field private z:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/16 v0, 0x14

    .line 71
    sput v0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->b:I

    .line 72
    sput v0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->c:I

    .line 73
    const/16 v0, 0x1e

    sput v0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/BaseRequest;-><init>()V

    .line 40
    sget-object v0, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;->d:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->h:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    .line 63
    iput-boolean v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->C:Z

    .line 67
    iput v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->E:I

    .line 74
    iput-boolean v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->e:Z

    .line 77
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a:Ljava/lang/String;

    .line 78
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->k:Landroid/content/Context;

    .line 79
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->c(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->l:Ljava/lang/String;

    .line 80
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->d(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->m:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 81
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->e(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->n:Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 82
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->f(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Lcom/bzbs/lib/http/okhttp/HttpHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->o:Lcom/bzbs/lib/http/okhttp/HttpHeaders;

    .line 83
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->g(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->p:Ljava/io/File;

    .line 84
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->h(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->q:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->i(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)[Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->s:[Ljava/lang/Integer;

    .line 86
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->j(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)[Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->t:[Ljava/lang/Integer;

    .line 87
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->k(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Lcom/bzbs/lib/http/okhttp/ResponseListener;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->v:Lcom/bzbs/lib/http/okhttp/ResponseListener;

    .line 88
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->l(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Lcom/bzbs/lib/http/okhttp/ErrorListener;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->w:Lcom/bzbs/lib/http/okhttp/ErrorListener;

    .line 89
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->m(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Lcom/bzbs/lib/http/okhttp/FailureListener;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->x:Lcom/bzbs/lib/http/okhttp/FailureListener;

    .line 90
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->n(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->r:Ljava/lang/Object;

    .line 91
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->o(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->y:Ljava/lang/String;

    .line 92
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->p(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->e:Z

    .line 93
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->q(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->z:Ljava/io/InputStream;

    .line 94
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->r(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->C:Z

    .line 95
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->s(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Lcom/bzbs/lib/http/okhttp/CacheListener;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->u:Lcom/bzbs/lib/http/okhttp/CacheListener;

    .line 96
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->t(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->A:Z

    .line 97
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->u(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->h:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    .line 98
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->v(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->g:Landroid/app/Dialog;

    .line 100
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->w(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)I

    move-result v0

    if-eqz v0, :cond_9e

    .line 101
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->w(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)I

    move-result v0

    sput v0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->b:I

    .line 103
    :cond_9e
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->x(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)I

    move-result v0

    if-eqz v0, :cond_aa

    .line 104
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->x(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)I

    move-result v0

    sput v0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->c:I

    .line 106
    :cond_aa
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->y(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)I

    move-result v0

    if-eqz v0, :cond_b6

    .line 107
    invoke-static {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->y(Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;)I

    move-result v0

    sput v0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d:I

    .line 109
    :cond_b6
    invoke-virtual {p0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a()V

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/bzbs/lib/http/okhttp/HttpRequest;I)I
    .registers 2

    .prologue
    .line 36
    iput p1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->E:I

    return p1
.end method

.method static synthetic a(Lcom/bzbs/lib/http/okhttp/HttpRequest;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->G:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/bzbs/lib/http/okhttp/HttpRequest;Lokhttp3/Headers;)Lokhttp3/Headers;
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->F:Lokhttp3/Headers;

    return-object p1
.end method

.method static synthetic a(Lcom/bzbs/lib/http/okhttp/HttpRequest;Lokhttp3/Response;)Lokhttp3/Response;
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->D:Lokhttp3/Response;

    return-object p1
.end method

.method private a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)V
    .registers 7

    .prologue
    .line 348
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 353
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->n:Lcom/bzbs/lib/http/okhttp/HttpParams;

    if-eqz v0, :cond_2b

    .line 354
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->n:Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/http/okhttp/HttpParams$PartValue;

    .line 355
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpParams$PartValue;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpParams$PartValue;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lokhttp3/FormBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_13

    .line 357
    :cond_2b
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 362
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->o:Lcom/bzbs/lib/http/okhttp/HttpHeaders;

    if-eqz v0, :cond_56

    .line 363
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->o:Lcom/bzbs/lib/http/okhttp/HttpHeaders;

    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpHeaders;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/http/okhttp/HttpHeaders$HeaderValue;

    .line 364
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpHeaders$HeaderValue;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpHeaders$HeaderValue;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_3e

    .line 366
    :cond_56
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->l:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 368
    sget-object v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$11;->a:[I

    invoke-virtual {p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_7e

    .line 377
    :goto_66
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->a()Lokhttp3/Request;

    move-result-object v0

    .line 379
    invoke-direct {p0, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lokhttp3/Request;)V

    .line 380
    return-void

    .line 370
    :pswitch_6e
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->a()Lokhttp3/FormBody;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->a(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_66

    .line 373
    :pswitch_76
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->a()Lokhttp3/FormBody;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->b(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_66

    .line 368
    :pswitch_data_7e
    .packed-switch 0x2
        :pswitch_6e
        :pswitch_76
    .end packed-switch
.end method

.method static synthetic a(Lcom/bzbs/lib/http/okhttp/HttpRequest;Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)V

    return-void
.end method

.method static synthetic a(Lcom/bzbs/lib/http/okhttp/HttpRequest;Ljava/io/IOException;)V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Ljava/io/IOException;)V

    return-void
.end method

.method static synthetic a(Lcom/bzbs/lib/http/okhttp/HttpRequest;Z)V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->b(Z)V

    return-void
.end method

.method private a(Ljava/io/IOException;)V
    .registers 4

    .prologue
    .line 474
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->k:Landroid/content/Context;

    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$9;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$9;-><init>(Lcom/bzbs/lib/http/okhttp/HttpRequest;Ljava/io/IOException;)V

    invoke-static {v0, v1}, Lcom/bzbs/lib/utils/DeleyUtils;->a(Landroid/content/Context;Lcom/bzbs/lib/utils/DeleyUtils$CallbackThread;)V

    .line 483
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->e:Z

    if-eqz v0, :cond_24

    .line 601
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 602
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a:Ljava/lang/String;

    .line 604
    :cond_c
    if-eqz p1, :cond_24

    .line 605
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_24

    .line 606
    invoke-static {p1}, Lcom/bzbs/lib/utils/ValidateUtils;->a(Ljava/lang/String;)Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;->c:Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;

    if-eq v0, v1, :cond_24

    .line 607
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/bzbs/lib/http/CacheLibs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_24
    return-void
.end method

.method private a(Lokhttp3/Request;)V
    .registers 4

    .prologue
    .line 383
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->j:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$6;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$6;-><init>(Lcom/bzbs/lib/http/okhttp/HttpRequest;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->a(Lokhttp3/Callback;)V

    .line 408
    return-void
.end method

.method static synthetic a(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Z
    .registers 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->B:Z

    return v0
.end method

.method static synthetic b(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/CacheListener;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->u:Lcom/bzbs/lib/http/okhttp/CacheListener;

    return-object v0
.end method

.method static synthetic b(Lcom/bzbs/lib/http/okhttp/HttpRequest;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Z)V
    .registers 4

    .prologue
    .line 614
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->p:Ljava/io/File;

    if-nez v0, :cond_21

    .line 615
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->h:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    if-eqz v0, :cond_21

    .line 616
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->h:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    sget-object v1, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;->a:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    if-ne v0, v1, :cond_2c

    .line 617
    if-eqz p1, :cond_22

    .line 618
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->g:Landroid/app/Dialog;

    if-nez v0, :cond_21

    .line 619
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/lib/utils/ProgressDialogCustomUtils;->a(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->g:Landroid/app/Dialog;

    .line 620
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 643
    :cond_21
    :goto_21
    return-void

    .line 623
    :cond_22
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_21

    .line 624
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_21

    .line 626
    :cond_2c
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->h:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    sget-object v1, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;->b:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    if-ne v0, v1, :cond_3c

    .line 627
    if-eqz p1, :cond_38

    .line 628
    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->g()V

    goto :goto_21

    .line 630
    :cond_38
    invoke-virtual {p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->b()V

    goto :goto_21

    .line 632
    :cond_3c
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->h:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    sget-object v1, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;->c:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    if-ne v0, v1, :cond_21

    .line 633
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_21

    .line 634
    if-eqz p1, :cond_4e

    .line 635
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_21

    .line 637
    :cond_4e
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_21
.end method

.method static synthetic c(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->y:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 293
    new-instance v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpCallTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpCallTask;-><init>(Lcom/bzbs/lib/http/okhttp/HttpRequest;Lcom/bzbs/lib/http/okhttp/HttpRequest$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpCallTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 294
    return-void
.end method

.method static synthetic d(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ResponseListener;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->v:Lcom/bzbs/lib/http/okhttp/ResponseListener;

    return-object v0
.end method

.method private d()V
    .registers 5

    .prologue
    .line 331
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 336
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->o:Lcom/bzbs/lib/http/okhttp/HttpHeaders;

    if-eqz v0, :cond_2b

    .line 337
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->o:Lcom/bzbs/lib/http/okhttp/HttpHeaders;

    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpHeaders;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/http/okhttp/HttpHeaders$HeaderValue;

    .line 338
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpHeaders$HeaderValue;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpHeaders$HeaderValue;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_13

    .line 340
    :cond_2b
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 342
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->a()Lokhttp3/Request;

    move-result-object v0

    .line 344
    invoke-direct {p0, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lokhttp3/Request;)V

    .line 345
    return-void
.end method

.method static synthetic e(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/io/File;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->p:Ljava/io/File;

    return-object v0
.end method

.method private e()V
    .registers 7

    .prologue
    .line 411
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->p:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 413
    new-instance v1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v1}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 414
    sget-object v0, Lokhttp3/MultipartBody;->e:Lokhttp3/MediaType;

    invoke-virtual {v1, v0}, Lokhttp3/MultipartBody$Builder;->a(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 416
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->n:Lcom/bzbs/lib/http/okhttp/HttpParams;

    if-eqz v0, :cond_35

    .line 417
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->n:Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/http/okhttp/HttpParams$PartValue;

    .line 418
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpParams$PartValue;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpParams$PartValue;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lokhttp3/MultipartBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_1d

    .line 420
    :cond_35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Content-Disposition"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "form-data; name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\"; filename=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->p:Ljava/io/File;

    .line 421
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lokhttp3/Headers;->a([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v0

    new-instance v2, Lcom/bzbs/lib/http/okhttp/CountingFileRequestBody;

    iget-object v3, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->p:Ljava/io/File;

    const-string/jumbo v4, "image/*"

    new-instance v5, Lcom/bzbs/lib/http/okhttp/HttpRequest$7;

    invoke-direct {v5, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$7;-><init>(Lcom/bzbs/lib/http/okhttp/HttpRequest;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/bzbs/lib/http/okhttp/CountingFileRequestBody;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/bzbs/lib/http/okhttp/CountingFileRequestBody$ProgressListener;)V

    .line 420
    invoke-virtual {v1, v0, v2}, Lokhttp3/MultipartBody$Builder;->a(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 438
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v2, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->l:Ljava/lang/String;

    .line 439
    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 440
    invoke-virtual {v1}, Lokhttp3/MultipartBody$Builder;->a()Lokhttp3/MultipartBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->a(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 442
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->o:Lcom/bzbs/lib/http/okhttp/HttpHeaders;

    if-eqz v0, :cond_be

    .line 443
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->o:Lcom/bzbs/lib/http/okhttp/HttpHeaders;

    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpHeaders;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/http/okhttp/HttpHeaders$HeaderValue;

    .line 444
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpHeaders$HeaderValue;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpHeaders$HeaderValue;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_a6

    .line 446
    :cond_be
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->j:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->a()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->i:Lokhttp3/Call;

    .line 448
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->i:Lokhttp3/Call;

    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$8;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$8;-><init>(Lcom/bzbs/lib/http/okhttp/HttpRequest;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->a(Lokhttp3/Callback;)V

    .line 471
    return-void
.end method

.method private f()V
    .registers 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->k:Landroid/content/Context;

    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;-><init>(Lcom/bzbs/lib/http/okhttp/HttpRequest;)V

    invoke-static {v0, v1}, Lcom/bzbs/lib/utils/DeleyUtils;->a(Landroid/content/Context;Lcom/bzbs/lib/utils/DeleyUtils$CallbackThread;)V

    .line 597
    return-void
.end method

.method static synthetic f(Lcom/bzbs/lib/http/okhttp/HttpRequest;)V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->e()V

    return-void
.end method

.method static synthetic g(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->m:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    return-object v0
.end method

.method private g()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 651
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->k:Landroid/content/Context;

    if-eqz v0, :cond_13

    .line 653
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->k:Landroid/content/Context;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "Loading..."

    invoke-static {v0, v1, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->f:Landroid/app/ProgressDialog;

    .line 655
    :cond_13
    return-void
.end method

.method static synthetic h(Lcom/bzbs/lib/http/okhttp/HttpRequest;)V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d()V

    return-void
.end method

.method static synthetic i(Lcom/bzbs/lib/http/okhttp/HttpRequest;)V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->f()V

    return-void
.end method

.method static synthetic j(Lcom/bzbs/lib/http/okhttp/HttpRequest;)[Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->s:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic k(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lokhttp3/Response;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->D:Lokhttp3/Response;

    return-object v0
.end method

.method static synthetic l(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->G:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/bzbs/lib/http/okhttp/HttpRequest;)I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->E:I

    return v0
.end method

.method static synthetic n(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lokhttp3/Headers;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->F:Lokhttp3/Headers;

    return-object v0
.end method

.method static synthetic o(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ErrorListener;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->w:Lcom/bzbs/lib/http/okhttp/ErrorListener;

    return-object v0
.end method

.method static synthetic p(Lcom/bzbs/lib/http/okhttp/HttpRequest;)[Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->t:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic q(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->r:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic r(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic s(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/FailureListener;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->x:Lcom/bzbs/lib/http/okhttp/FailureListener;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 114
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->l:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Url not null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_e
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/lib/utils/ValidateUtils;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Url not empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1f
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->k:Landroid/content/Context;

    if-nez v0, :cond_2c

    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Activity or Context not null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_2c
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->n:Lcom/bzbs/lib/http/okhttp/HttpParams;

    if-nez v0, :cond_37

    .line 123
    new-instance v0, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v0}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->n:Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 125
    :cond_37
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->m:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    if-nez v0, :cond_3f

    .line 126
    sget-object v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->m:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 128
    :cond_3f
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->y:Ljava/lang/String;

    if-nez v0, :cond_48

    .line 129
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->y:Ljava/lang/String;

    .line 131
    :cond_48
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->b(Z)V

    .line 133
    iget-boolean v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->C:Z

    if-eqz v0, :cond_6b

    .line 134
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a:Ljava/lang/String;

    if-nez v0, :cond_58

    .line 135
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a:Ljava/lang/String;

    .line 136
    :cond_58
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/lib/http/CacheLibs;->a(Landroid/content/Context;)V

    .line 137
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a:Ljava/lang/String;

    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$1;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$1;-><init>(Lcom/bzbs/lib/http/okhttp/HttpRequest;)V

    invoke-static {v0, v1}, Lcom/bzbs/lib/http/CacheLibs;->a(Ljava/lang/String;Lcom/bzbs/lib/http/CacheLibs$addOnListenerGet;)V

    .line 155
    invoke-direct {p0, v5}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->b(Z)V

    .line 255
    :goto_6a
    return-void

    .line 167
    :cond_6b
    iget-boolean v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->A:Z

    if-eqz v0, :cond_77

    .line 168
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/lib/utils/ValidateUtils;->a(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->z:Ljava/io/InputStream;

    .line 171
    :cond_77
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->z:Ljava/io/InputStream;

    if-nez v0, :cond_dc

    .line 172
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget v1, Lcom/bzbs/lib/http/okhttp/HttpRequest;->b:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 173
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->a(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget v1, Lcom/bzbs/lib/http/okhttp/HttpRequest;->c:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 174
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->c(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget v1, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 175
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->b(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$2;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$2;-><init>(Lcom/bzbs/lib/http/okhttp/HttpRequest;)V

    invoke-direct {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->d:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 184
    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->a(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->a(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->a()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->j:Lokhttp3/OkHttpClient;

    .line 224
    :goto_b5
    iget-boolean v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->e:Z

    if-eqz v0, :cond_d0

    .line 225
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a:Ljava/lang/String;

    if-nez v0, :cond_c1

    .line 226
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a:Ljava/lang/String;

    .line 227
    :cond_c1
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/lib/http/CacheLibs;->a(Landroid/content/Context;)V

    .line 228
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a:Ljava/lang/String;

    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$5;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$5;-><init>(Lcom/bzbs/lib/http/okhttp/HttpRequest;)V

    invoke-static {v0, v1}, Lcom/bzbs/lib/http/CacheLibs;->a(Ljava/lang/String;Lcom/bzbs/lib/http/CacheLibs$addOnListenerGet;)V

    .line 248
    :cond_d0
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/lib/utils/NetUtil;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_168

    .line 249
    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->c()V

    goto :goto_6a

    .line 187
    :cond_dc
    new-instance v0, Lcom/bzbs/lib/http/okhttp/SslTrustFactory;

    iget-object v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->z:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lcom/bzbs/lib/http/okhttp/SslTrustFactory;-><init>(Ljava/io/InputStream;)V

    .line 188
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/SslTrustFactory;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_12c

    .line 190
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget v2, Lcom/bzbs/lib/http/okhttp/HttpRequest;->b:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 191
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->a(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget v2, Lcom/bzbs/lib/http/okhttp/HttpRequest;->c:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 192
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->c(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget v2, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 193
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->b(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 194
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->a(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$3;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$3;-><init>(Lcom/bzbs/lib/http/okhttp/HttpRequest;)V

    invoke-direct {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->d:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 203
    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->a(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->a(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->a()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->j:Lokhttp3/OkHttpClient;

    goto :goto_b5

    .line 206
    :cond_12c
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget v1, Lcom/bzbs/lib/http/okhttp/HttpRequest;->b:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 207
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->a(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget v1, Lcom/bzbs/lib/http/okhttp/HttpRequest;->c:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 208
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->c(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget v1, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 209
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->b(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$4;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$4;-><init>(Lcom/bzbs/lib/http/okhttp/HttpRequest;)V

    invoke-direct {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->d:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 219
    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->a(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->a(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->a()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->j:Lokhttp3/OkHttpClient;

    goto/16 :goto_b5

    .line 251
    :cond_168
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->v:Lcom/bzbs/lib/http/okhttp/ResponseListener;

    if-eqz v0, :cond_177

    .line 252
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->v:Lcom/bzbs/lib/http/okhttp/ResponseListener;

    iget-object v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->y:Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 253
    :cond_177
    invoke-direct {p0, v5}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->b(Z)V

    goto/16 :goto_6a
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 677
    iput-boolean p1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->B:Z

    .line 678
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 672
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 673
    :cond_9
    return-void
.end method
