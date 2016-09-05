.class public Lcom/bzbs/lib/survey/util/http/BuzzbeesRestClient;
.super Ljava/lang/Object;
.source "BuzzbeesRestClient.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/loopj/android/http/AsyncHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/bzbs/lib/survey/util/http/BuzzbeesRestClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/lib/survey/util/http/BuzzbeesRestClient;->a:Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    sput-object v0, Lcom/bzbs/lib/survey/util/http/BuzzbeesRestClient;->b:Lcom/loopj/android/http/AsyncHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .registers 6

    .prologue
    .line 21
    .line 23
    const-string/jumbo v0, " "

    const-string/jumbo v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string/jumbo v1, "\""

    const-string/jumbo v2, "%22"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 25
    const-string/jumbo v1, "#"

    const-string/jumbo v2, "%23"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 26
    const-string/jumbo v1, "{"

    const-string/jumbo v2, "%7B"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 27
    const-string/jumbo v1, "}"

    const-string/jumbo v2, "%7D"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 28
    const-string/jumbo v1, "<"

    const-string/jumbo v2, "%3C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string/jumbo v1, ">"

    const-string/jumbo v2, "%3E"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string/jumbo v1, "|"

    const-string/jumbo v2, "%7C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 32
    sget-object v1, Lcom/bzbs/lib/survey/util/http/BuzzbeesRestClient;->b:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v1, v0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 33
    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .registers 6

    .prologue
    .line 63
    .line 65
    const-string/jumbo v0, " "

    const-string/jumbo v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string/jumbo v1, "\""

    const-string/jumbo v2, "%22"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string/jumbo v1, "#"

    const-string/jumbo v2, "%23"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string/jumbo v1, "{"

    const-string/jumbo v2, "%7B"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string/jumbo v1, "}"

    const-string/jumbo v2, "%7D"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "<"

    const-string/jumbo v2, "%3C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string/jumbo v1, ">"

    const-string/jumbo v2, "%3E"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string/jumbo v1, "|"

    const-string/jumbo v2, "%7C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 75
    sget-object v1, Lcom/bzbs/lib/survey/util/http/BuzzbeesRestClient;->b:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v1, v0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 76
    return-void
.end method
