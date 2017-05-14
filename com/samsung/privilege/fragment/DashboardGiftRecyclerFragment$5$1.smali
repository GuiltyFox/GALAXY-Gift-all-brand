.class Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$5$1;
.super Ljava/lang/Object;
.source "DashboardGiftRecyclerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$5;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$5;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$5;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 572
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$5$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$5;

    iput-object p2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$5$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 574
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$5$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$5;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$5;->d:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$5$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$5$1;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$5;

    iget-object v2, v2, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$5;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 575
    return-void
.end method
