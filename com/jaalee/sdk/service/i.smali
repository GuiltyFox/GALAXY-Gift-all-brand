.class final Lcom/jaalee/sdk/service/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/jaalee/sdk/service/h;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/Object;

.field private final synthetic d:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Lcom/jaalee/sdk/service/h;ILjava/lang/Object;Landroid/os/Messenger;)V
    .registers 5

    iput-object p1, p0, Lcom/jaalee/sdk/service/i;->a:Lcom/jaalee/sdk/service/h;

    iput p2, p0, Lcom/jaalee/sdk/service/i;->b:I

    iput-object p3, p0, Lcom/jaalee/sdk/service/i;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/jaalee/sdk/service/i;->d:Landroid/os/Messenger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/jaalee/sdk/service/i;->b:I

    packed-switch v0, :pswitch_data_d2

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unknown message: what="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/jaalee/sdk/service/i;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jaalee/sdk/service/i;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->b(Ljava/lang/String;)V

    :goto_27
    return-void

    :pswitch_28
    new-instance v1, Lcom/jaalee/sdk/service/n;

    iget-object v0, p0, Lcom/jaalee/sdk/service/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/jaalee/sdk/Region;

    iget-object v2, p0, Lcom/jaalee/sdk/service/i;->d:Landroid/os/Messenger;

    invoke-direct {v1, v0, v2}, Lcom/jaalee/sdk/service/n;-><init>(Lcom/jaalee/sdk/Region;Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/jaalee/sdk/service/i;->a:Lcom/jaalee/sdk/service/h;

    invoke-static {v0}, Lcom/jaalee/sdk/service/h;->a(Lcom/jaalee/sdk/service/h;)Lcom/jaalee/sdk/service/BeaconService;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/jaalee/sdk/service/BeaconService;->a(Lcom/jaalee/sdk/service/BeaconService;Lcom/jaalee/sdk/service/n;)V

    goto :goto_27

    :pswitch_3d
    iget-object v0, p0, Lcom/jaalee/sdk/service/i;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/jaalee/sdk/service/i;->a:Lcom/jaalee/sdk/service/h;

    invoke-static {v1}, Lcom/jaalee/sdk/service/h;->a(Lcom/jaalee/sdk/service/h;)Lcom/jaalee/sdk/service/BeaconService;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/jaalee/sdk/service/BeaconService;->a(Lcom/jaalee/sdk/service/BeaconService;Ljava/lang/String;)V

    goto :goto_27

    :pswitch_4b
    new-instance v1, Lcom/jaalee/sdk/service/k;

    iget-object v0, p0, Lcom/jaalee/sdk/service/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/jaalee/sdk/Region;

    iget-object v2, p0, Lcom/jaalee/sdk/service/i;->d:Landroid/os/Messenger;

    invoke-direct {v1, v0, v2}, Lcom/jaalee/sdk/service/k;-><init>(Lcom/jaalee/sdk/Region;Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/jaalee/sdk/service/i;->a:Lcom/jaalee/sdk/service/h;

    invoke-static {v0}, Lcom/jaalee/sdk/service/h;->a(Lcom/jaalee/sdk/service/h;)Lcom/jaalee/sdk/service/BeaconService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jaalee/sdk/service/BeaconService;->a(Lcom/jaalee/sdk/service/k;)V

    goto :goto_27

    :pswitch_60
    iget-object v0, p0, Lcom/jaalee/sdk/service/i;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/jaalee/sdk/service/i;->a:Lcom/jaalee/sdk/service/h;

    invoke-static {v1}, Lcom/jaalee/sdk/service/h;->a(Lcom/jaalee/sdk/service/h;)Lcom/jaalee/sdk/service/BeaconService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jaalee/sdk/service/BeaconService;->a(Ljava/lang/String;)V

    goto :goto_27

    :pswitch_6e
    iget-object v0, p0, Lcom/jaalee/sdk/service/i;->a:Lcom/jaalee/sdk/service/h;

    invoke-static {v0}, Lcom/jaalee/sdk/service/h;->a(Lcom/jaalee/sdk/service/h;)Lcom/jaalee/sdk/service/BeaconService;

    move-result-object v0

    iget-object v1, p0, Lcom/jaalee/sdk/service/i;->d:Landroid/os/Messenger;

    invoke-static {v0, v1}, Lcom/jaalee/sdk/service/BeaconService;->a(Lcom/jaalee/sdk/service/BeaconService;Landroid/os/Messenger;)V

    goto :goto_27

    :pswitch_7a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Setting foreground scan period: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jaalee/sdk/service/i;->a:Lcom/jaalee/sdk/service/h;

    invoke-static {v1}, Lcom/jaalee/sdk/service/h;->a(Lcom/jaalee/sdk/service/h;)Lcom/jaalee/sdk/service/BeaconService;

    move-result-object v1

    invoke-static {v1}, Lcom/jaalee/sdk/service/BeaconService;->d(Lcom/jaalee/sdk/service/BeaconService;)Lcom/jaalee/sdk/service/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaalee/sdk/service/i;->a:Lcom/jaalee/sdk/service/h;

    invoke-static {v0}, Lcom/jaalee/sdk/service/h;->a(Lcom/jaalee/sdk/service/h;)Lcom/jaalee/sdk/service/BeaconService;

    move-result-object v1

    iget-object v0, p0, Lcom/jaalee/sdk/service/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/jaalee/sdk/service/r;

    invoke-static {v1, v0}, Lcom/jaalee/sdk/service/BeaconService;->a(Lcom/jaalee/sdk/service/BeaconService;Lcom/jaalee/sdk/service/r;)V

    goto :goto_27

    :pswitch_a5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Setting background scan period: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jaalee/sdk/service/i;->a:Lcom/jaalee/sdk/service/h;

    invoke-static {v1}, Lcom/jaalee/sdk/service/h;->a(Lcom/jaalee/sdk/service/h;)Lcom/jaalee/sdk/service/BeaconService;

    move-result-object v1

    invoke-static {v1}, Lcom/jaalee/sdk/service/BeaconService;->e(Lcom/jaalee/sdk/service/BeaconService;)Lcom/jaalee/sdk/service/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaalee/sdk/service/i;->a:Lcom/jaalee/sdk/service/h;

    invoke-static {v0}, Lcom/jaalee/sdk/service/h;->a(Lcom/jaalee/sdk/service/h;)Lcom/jaalee/sdk/service/BeaconService;

    move-result-object v1

    iget-object v0, p0, Lcom/jaalee/sdk/service/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/jaalee/sdk/service/r;

    invoke-static {v1, v0}, Lcom/jaalee/sdk/service/BeaconService;->b(Lcom/jaalee/sdk/service/BeaconService;Lcom/jaalee/sdk/service/r;)V

    goto/16 :goto_27

    nop

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_28
        :pswitch_3d
        :pswitch_5
        :pswitch_4b
        :pswitch_60
        :pswitch_5
        :pswitch_6e
        :pswitch_5
        :pswitch_7a
        :pswitch_a5
    .end packed-switch
.end method
