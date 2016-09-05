.class public final Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;
.super Ljava/lang/Object;
.source "AuthSchemeRegistry.java"

# interfaces
.implements Lcz/msebera/android/httpclient/config/Lookup;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcz/msebera/android/httpclient/config/Lookup",
        "<",
        "Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/auth/AuthScheme;
    .registers 6

    .prologue
    .line 110
    const-string/jumbo v0, "Name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;

    .line 112
    if-eqz v0, :cond_1b

    .line 113
    invoke-interface {v0, p2}, Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;->a(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v0

    return-object v0

    .line 115
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported authentication scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;
    .registers 3

    .prologue
    .line 144
    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry$1;

    invoke-direct {v0, p0, p1}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry$1;-><init>(Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;)V
    .registers 5

    .prologue
    .line 80
    const-string/jumbo v0, "Name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v0, "Authentication scheme factory"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public synthetic b(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;->a(Ljava/lang/String;)Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;

    move-result-object v0

    return-object v0
.end method
