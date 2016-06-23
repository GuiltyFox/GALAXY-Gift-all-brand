.class final Lcom/jaalee/sdk/service/h;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/jaalee/sdk/service/BeaconService;


# direct methods
.method private constructor <init>(Lcom/jaalee/sdk/service/BeaconService;)V
    .registers 2

    iput-object p1, p0, Lcom/jaalee/sdk/service/h;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaalee/sdk/service/BeaconService;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/jaalee/sdk/service/h;-><init>(Lcom/jaalee/sdk/service/BeaconService;)V

    return-void
.end method

.method static synthetic a(Lcom/jaalee/sdk/service/h;)Lcom/jaalee/sdk/service/BeaconService;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/service/h;->a:Lcom/jaalee/sdk/service/BeaconService;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v3, p0, Lcom/jaalee/sdk/service/h;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-static {v3}, Lcom/jaalee/sdk/service/BeaconService;->c(Lcom/jaalee/sdk/service/BeaconService;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/jaalee/sdk/service/i;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/jaalee/sdk/service/i;-><init>(Lcom/jaalee/sdk/service/h;ILjava/lang/Object;Landroid/os/Messenger;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
