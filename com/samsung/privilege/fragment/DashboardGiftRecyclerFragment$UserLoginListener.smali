.class Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;
.super Ljava/lang/Object;
.source "DashboardGiftRecyclerFragment.java"

# interfaces
.implements Lcom/bzbs/event/LoginEvents$LoginListener;


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)V
    .registers 2

    .prologue
    .line 2796
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$1;)V
    .registers 3

    .prologue
    .line 2796
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 2799
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Z)V

    .line 2800
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 2804
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Z)V

    .line 2805
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 2809
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenOTPSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2810
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2826
    return-void
.end method
