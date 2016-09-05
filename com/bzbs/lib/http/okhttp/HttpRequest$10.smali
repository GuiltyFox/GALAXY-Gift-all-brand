.class Lcom/bzbs/lib/http/okhttp/HttpRequest$10;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Lcom/bzbs/lib/utils/DeleyUtils$CallbackThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/http/okhttp/HttpRequest;->f()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/http/okhttp/HttpRequest;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/http/okhttp/HttpRequest;)V
    .registers 2

    .prologue
    .line 486
    iput-object p1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 489
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->j(Lcom/bzbs/lib/http/okhttp/HttpRequest;)[Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_159

    .line 491
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->j(Lcom/bzbs/lib/http/okhttp/HttpRequest;)[Ljava/lang/Integer;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_12
    if-ge v0, v4, :cond_29b

    aget-object v5, v3, v0

    .line 492
    iget-object v6, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v6}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->k(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lokhttp3/Response;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Response;->b()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v6, v5, :cond_43

    move v0, v1

    .line 498
    :goto_27
    iget-object v3, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ResponseListener;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 499
    if-eqz v0, :cond_73

    .line 500
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 501
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ResponseListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->disconnect()V

    .line 595
    :cond_42
    :goto_42
    return-void

    .line 491
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 505
    :cond_46
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    iget-object v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->l(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->b(Lcom/bzbs/lib/http/okhttp/HttpRequest;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->c(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->m(Lcom/bzbs/lib/http/okhttp/HttpRequest;)I

    move-result v2

    iget-object v3, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->n(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lokhttp3/Headers;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->l(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    goto :goto_42

    .line 508
    :cond_73
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->o(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ErrorListener;

    move-result-object v0

    if-eqz v0, :cond_e5

    .line 510
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->p(Lcom/bzbs/lib/http/okhttp/HttpRequest;)[Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_e5

    .line 511
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->p(Lcom/bzbs/lib/http/okhttp/HttpRequest;)[Ljava/lang/Integer;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_8b
    if-ge v0, v4, :cond_298

    aget-object v5, v3, v0

    .line 512
    iget-object v6, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v6}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->k(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lokhttp3/Response;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Response;->b()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v6, v5, :cond_b3

    .line 518
    :goto_9f
    if-eqz v1, :cond_e5

    .line 519
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 520
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ResponseListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->disconnect()V

    goto :goto_42

    .line 511
    :cond_b3
    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    .line 524
    :cond_b6
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->o(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->c(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->m(Lcom/bzbs/lib/http/okhttp/HttpRequest;)I

    move-result v2

    iget-object v3, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->n(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lokhttp3/Headers;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->l(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v5}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->q(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v6}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->r(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Landroid/content/Context;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/bzbs/lib/http/okhttp/ErrorListener;->a(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)V

    goto/16 :goto_42

    .line 529
    :cond_e5
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->s(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/FailureListener;

    move-result-object v0

    if-eqz v0, :cond_123

    .line 530
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 531
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ResponseListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->disconnect()V

    goto/16 :goto_42

    .line 535
    :cond_100
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->s(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/FailureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->c(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->m(Lcom/bzbs/lib/http/okhttp/HttpRequest;)I

    move-result v2

    iget-object v3, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->n(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lokhttp3/Headers;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->l(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bzbs/lib/http/okhttp/FailureListener;->a(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    goto/16 :goto_42

    .line 538
    :cond_123
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_136

    .line 539
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ResponseListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->disconnect()V

    goto/16 :goto_42

    .line 543
    :cond_136
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->c(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->m(Lcom/bzbs/lib/http/okhttp/HttpRequest;)I

    move-result v2

    iget-object v3, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->n(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lokhttp3/Headers;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->l(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    goto/16 :goto_42

    .line 546
    :cond_159
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ResponseListener;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 547
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->k(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->c()Z

    move-result v0

    if-eqz v0, :cond_1ae

    .line 548
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    iget-object v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->l(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->b(Lcom/bzbs/lib/http/okhttp/HttpRequest;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 551
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ResponseListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->disconnect()V

    goto/16 :goto_42

    .line 555
    :cond_18b
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->c(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->m(Lcom/bzbs/lib/http/okhttp/HttpRequest;)I

    move-result v2

    iget-object v3, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->n(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lokhttp3/Headers;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->l(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    goto/16 :goto_42

    .line 557
    :cond_1ae
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->o(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ErrorListener;

    move-result-object v0

    if-eqz v0, :cond_221

    .line 559
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->p(Lcom/bzbs/lib/http/okhttp/HttpRequest;)[Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_221

    .line 560
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->p(Lcom/bzbs/lib/http/okhttp/HttpRequest;)[Ljava/lang/Integer;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_1c6
    if-ge v0, v4, :cond_295

    aget-object v5, v3, v0

    .line 561
    iget-object v6, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v6}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->k(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lokhttp3/Response;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Response;->b()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v6, v5, :cond_1ef

    .line 567
    :goto_1da
    if-eqz v1, :cond_221

    .line 568
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_1f2

    .line 569
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ResponseListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->disconnect()V

    goto/16 :goto_42

    .line 560
    :cond_1ef
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c6

    .line 573
    :cond_1f2
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->o(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->c(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->m(Lcom/bzbs/lib/http/okhttp/HttpRequest;)I

    move-result v2

    iget-object v3, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->n(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lokhttp3/Headers;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->l(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v5}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->q(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v6}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->r(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Landroid/content/Context;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/bzbs/lib/http/okhttp/ErrorListener;->a(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)V

    goto/16 :goto_42

    .line 578
    :cond_221
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->s(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/FailureListener;

    move-result-object v0

    if-eqz v0, :cond_25f

    .line 579
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_23c

    .line 580
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ResponseListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->disconnect()V

    goto/16 :goto_42

    .line 584
    :cond_23c
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->s(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/FailureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->c(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->m(Lcom/bzbs/lib/http/okhttp/HttpRequest;)I

    move-result v2

    iget-object v3, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->n(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lokhttp3/Headers;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->l(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bzbs/lib/http/okhttp/FailureListener;->a(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    goto/16 :goto_42

    .line 587
    :cond_25f
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_272

    .line 588
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ResponseListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->disconnect()V

    goto/16 :goto_42

    .line 592
    :cond_272
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->d(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/ResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->c(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->m(Lcom/bzbs/lib/http/okhttp/HttpRequest;)I

    move-result v2

    iget-object v3, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->n(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lokhttp3/Headers;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$10;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->l(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    goto/16 :goto_42

    :cond_295
    move v1, v2

    goto/16 :goto_1da

    :cond_298
    move v1, v2

    goto/16 :goto_9f

    :cond_29b
    move v0, v2

    goto/16 :goto_27
.end method
