.class public Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;
.super Ljava/lang/Object;
.source "DefaultHttpResponseFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpResponseFactory;


# static fields
.field public static final a:Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;


# instance fields
.field protected final b:Lcz/msebera/android/httpclient/ReasonPhraseCatalog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    new-instance v0, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;->a:Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 71
    sget-object v0, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->a:Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;-><init>(Lcz/msebera/android/httpclient/ReasonPhraseCatalog;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/ReasonPhraseCatalog;)V
    .registers 3

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string/jumbo v0, "Reason phrase catalog"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/ReasonPhraseCatalog;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;->b:Lcz/msebera/android/httpclient/ReasonPhraseCatalog;

    .line 64
    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/StatusLine;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .registers 6

    .prologue
    .line 92
    const-string/jumbo v0, "Status line"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;->b:Lcz/msebera/android/httpclient/ReasonPhraseCatalog;

    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;->a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;-><init>(Lcz/msebera/android/httpclient/StatusLine;Lcz/msebera/android/httpclient/ReasonPhraseCatalog;Ljava/util/Locale;)V

    return-object v0
.end method

.method protected a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/util/Locale;
    .registers 3

    .prologue
    .line 106
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method
