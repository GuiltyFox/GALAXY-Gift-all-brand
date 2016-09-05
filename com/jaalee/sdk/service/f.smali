.class final Lcom/jaalee/sdk/service/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/jaalee/sdk/service/e;


# direct methods
.method constructor <init>(Lcom/jaalee/sdk/service/e;)V
    .registers 2

    iput-object p1, p0, Lcom/jaalee/sdk/service/f;->a:Lcom/jaalee/sdk/service/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/service/f;->a:Lcom/jaalee/sdk/service/e;

    invoke-static {v0}, Lcom/jaalee/sdk/service/e;->a(Lcom/jaalee/sdk/service/e;)Lcom/jaalee/sdk/service/BeaconService;

    move-result-object v0

    invoke-static {v0}, Lcom/jaalee/sdk/service/BeaconService;->j(Lcom/jaalee/sdk/service/BeaconService;)V

    return-void
.end method
