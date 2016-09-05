.class Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry$1;
.super Ljava/lang/Object;
.source "AuthSchemeRegistry.java"

# interfaces
.implements Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;->a(Ljava/lang/String;)Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 144
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry$1;->b:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    iput-object p2, p0, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/auth/AuthScheme;
    .registers 5

    .prologue
    .line 147
    const-string/jumbo v0, "http.request"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpRequest;

    .line 149
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry$1;->b:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry$1;->a:Ljava/lang/String;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v0

    return-object v0
.end method
