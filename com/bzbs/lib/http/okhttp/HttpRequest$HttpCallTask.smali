.class Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpCallTask;
.super Landroid/os/AsyncTask;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/http/okhttp/HttpRequest;


# direct methods
.method private constructor <init>(Lcom/bzbs/lib/http/okhttp/HttpRequest;)V
    .registers 2

    .prologue
    .line 296
    iput-object p1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpCallTask;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/lib/http/okhttp/HttpRequest;Lcom/bzbs/lib/http/okhttp/HttpRequest$1;)V
    .registers 3

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpCallTask;-><init>(Lcom/bzbs/lib/http/okhttp/HttpRequest;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 4

    .prologue
    .line 302
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpCallTask;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->e(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 303
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpCallTask;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->f(Lcom/bzbs/lib/http/okhttp/HttpRequest;)V

    .line 318
    :goto_d
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 305
    :cond_13
    sget-object v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$11;->a:[I

    iget-object v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpCallTask;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->g(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    goto :goto_d

    .line 308
    :pswitch_25
    :try_start_25
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpCallTask;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->h(Lcom/bzbs/lib/http/okhttp/HttpRequest;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_2b

    goto :goto_d

    .line 309
    :catch_2b
    move-exception v0

    goto :goto_d

    .line 315
    :pswitch_2d
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpCallTask;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    iget-object v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpCallTask;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->g(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)V

    goto :goto_d

    .line 305
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .registers 2

    .prologue
    .line 323
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 296
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpCallTask;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 299
    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 296
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpCallTask;->a([Ljava/lang/Integer;)V

    return-void
.end method
