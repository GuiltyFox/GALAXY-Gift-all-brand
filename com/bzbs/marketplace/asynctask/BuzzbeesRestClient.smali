.class public Lcom/bzbs/marketplace/asynctask/BuzzbeesRestClient;
.super Ljava/lang/Object;
.source "BuzzbeesRestClient.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Lcom/loopj/android/http/AsyncHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    sput-object v0, Lcom/bzbs/marketplace/asynctask/BuzzbeesRestClient;->a:Ljava/lang/String;

    .line 15
    const-class v0, Lcom/bzbs/marketplace/asynctask/BuzzbeesRestClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/marketplace/asynctask/BuzzbeesRestClient;->b:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    sput-object v0, Lcom/bzbs/marketplace/asynctask/BuzzbeesRestClient;->c:Lcom/loopj/android/http/AsyncHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .registers 6

    .prologue
    .line 22
    .line 24
    const-string/jumbo v0, " "

    const-string/jumbo v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 25
    const-string/jumbo v1, "\""

    const-string/jumbo v2, "%22"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 26
    const-string/jumbo v1, "#"

    const-string/jumbo v2, "%23"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 27
    const-string/jumbo v1, "{"

    const-string/jumbo v2, "%7B"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 28
    const-string/jumbo v1, "}"

    const-string/jumbo v2, "%7D"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string/jumbo v1, "<"

    const-string/jumbo v2, "%3C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string/jumbo v1, ">"

    const-string/jumbo v2, "%3E"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string/jumbo v1, "|"

    const-string/jumbo v2, "%7C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 33
    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 34
    invoke-virtual {v1, v0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 35
    return-void
.end method
