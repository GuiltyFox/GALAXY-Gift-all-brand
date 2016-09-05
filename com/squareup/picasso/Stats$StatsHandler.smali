.class Lcom/squareup/picasso/Stats$StatsHandler;
.super Landroid/os/Handler;
.source "Stats.java"


# instance fields
.field private final a:Lcom/squareup/picasso/Stats;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/squareup/picasso/Stats;)V
    .registers 3

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 132
    iput-object p2, p0, Lcom/squareup/picasso/Stats$StatsHandler;->a:Lcom/squareup/picasso/Stats;

    .line 133
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    .line 153
    sget-object v0, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    new-instance v1, Lcom/squareup/picasso/Stats$StatsHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/squareup/picasso/Stats$StatsHandler$1;-><init>(Lcom/squareup/picasso/Stats$StatsHandler;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    :goto_f
    return-void

    .line 138
    :pswitch_10
    iget-object v0, p0, Lcom/squareup/picasso/Stats$StatsHandler;->a:Lcom/squareup/picasso/Stats;

    invoke-virtual {v0}, Lcom/squareup/picasso/Stats;->c()V

    goto :goto_f

    .line 141
    :pswitch_16
    iget-object v0, p0, Lcom/squareup/picasso/Stats$StatsHandler;->a:Lcom/squareup/picasso/Stats;

    invoke-virtual {v0}, Lcom/squareup/picasso/Stats;->d()V

    goto :goto_f

    .line 144
    :pswitch_1c
    iget-object v0, p0, Lcom/squareup/picasso/Stats$StatsHandler;->a:Lcom/squareup/picasso/Stats;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/squareup/picasso/Stats;->b(J)V

    goto :goto_f

    .line 147
    :pswitch_25
    iget-object v0, p0, Lcom/squareup/picasso/Stats$StatsHandler;->a:Lcom/squareup/picasso/Stats;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/squareup/picasso/Stats;->c(J)V

    goto :goto_f

    .line 150
    :pswitch_2e
    iget-object v1, p0, Lcom/squareup/picasso/Stats$StatsHandler;->a:Lcom/squareup/picasso/Stats;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Stats;->a(Ljava/lang/Long;)V

    goto :goto_f

    .line 136
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_10
        :pswitch_16
        :pswitch_1c
        :pswitch_25
        :pswitch_2e
    .end packed-switch
.end method
