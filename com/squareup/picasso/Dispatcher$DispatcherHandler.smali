.class Lcom/squareup/picasso/Dispatcher$DispatcherHandler;
.super Landroid/os/Handler;
.source "Dispatcher.java"


# instance fields
.field private final a:Lcom/squareup/picasso/Dispatcher;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/squareup/picasso/Dispatcher;)V
    .registers 3

    .prologue
    .line 474
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 475
    iput-object p2, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->a:Lcom/squareup/picasso/Dispatcher;

    .line 476
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 479
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_70

    .line 529
    :pswitch_7
    sget-object v0, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    new-instance v1, Lcom/squareup/picasso/Dispatcher$DispatcherHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/squareup/picasso/Dispatcher$DispatcherHandler$1;-><init>(Lcom/squareup/picasso/Dispatcher$DispatcherHandler;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 535
    :goto_11
    return-void

    .line 481
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/squareup/picasso/Action;

    .line 482
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->a:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Dispatcher;->c(Lcom/squareup/picasso/Action;)V

    goto :goto_11

    .line 486
    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/squareup/picasso/Action;

    .line 487
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->a:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Dispatcher;->d(Lcom/squareup/picasso/Action;)V

    goto :goto_11

    .line 491
    :pswitch_26
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 492
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->a:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Dispatcher;->a(Ljava/lang/Object;)V

    goto :goto_11

    .line 496
    :pswitch_2e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 497
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->a:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Dispatcher;->b(Ljava/lang/Object;)V

    goto :goto_11

    .line 501
    :pswitch_36
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/squareup/picasso/BitmapHunter;

    .line 502
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->a:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Dispatcher;->e(Lcom/squareup/picasso/BitmapHunter;)V

    goto :goto_11

    .line 506
    :pswitch_40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/squareup/picasso/BitmapHunter;

    .line 507
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->a:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Dispatcher;->d(Lcom/squareup/picasso/BitmapHunter;)V

    goto :goto_11

    .line 511
    :pswitch_4a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/squareup/picasso/BitmapHunter;

    .line 512
    iget-object v2, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->a:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v2, v0, v1}, Lcom/squareup/picasso/Dispatcher;->a(Lcom/squareup/picasso/BitmapHunter;Z)V

    goto :goto_11

    .line 516
    :pswitch_54
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->a:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v0}, Lcom/squareup/picasso/Dispatcher;->a()V

    goto :goto_11

    .line 520
    :pswitch_5a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    .line 521
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->a:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Dispatcher;->b(Landroid/net/NetworkInfo;)V

    goto :goto_11

    .line 525
    :pswitch_64
    iget-object v2, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->a:Lcom/squareup/picasso/Dispatcher;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_6e

    :goto_6a
    invoke-virtual {v2, v0}, Lcom/squareup/picasso/Dispatcher;->b(Z)V

    goto :goto_11

    :cond_6e
    move v0, v1

    goto :goto_6a

    .line 479
    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_12
        :pswitch_1c
        :pswitch_7
        :pswitch_36
        :pswitch_40
        :pswitch_4a
        :pswitch_54
        :pswitch_7
        :pswitch_5a
        :pswitch_64
        :pswitch_26
        :pswitch_2e
    .end packed-switch
.end method
