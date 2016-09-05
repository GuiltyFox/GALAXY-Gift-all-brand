.class public final Lcz/msebera/android/httpclient/auth/AuthOption;
.super Ljava/lang/Object;
.source "AuthOption.java"


# instance fields
.field private final a:Lcz/msebera/android/httpclient/auth/AuthScheme;

.field private final b:Lcz/msebera/android/httpclient/auth/Credentials;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;)V
    .registers 4

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string/jumbo v0, "Auth scheme"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v0, "User credentials"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/AuthOption;->a:Lcz/msebera/android/httpclient/auth/AuthScheme;

    .line 46
    iput-object p2, p0, Lcz/msebera/android/httpclient/auth/AuthOption;->b:Lcz/msebera/android/httpclient/auth/Credentials;

    .line 47
    return-void
.end method


# virtual methods
.method public a()Lcz/msebera/android/httpclient/auth/AuthScheme;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthOption;->a:Lcz/msebera/android/httpclient/auth/AuthScheme;

    return-object v0
.end method

.method public b()Lcz/msebera/android/httpclient/auth/Credentials;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthOption;->b:Lcz/msebera/android/httpclient/auth/Credentials;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthOption;->a:Lcz/msebera/android/httpclient/auth/AuthScheme;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
