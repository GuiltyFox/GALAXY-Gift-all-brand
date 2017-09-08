.class Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$6;
.super Ljava/lang/Object;
.source "DashboardGiftRecyclerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c(Ljava/util/ArrayList;)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;I)V
    .registers 3

    .prologue
    .line 732
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$6;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iput p2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 735
    iget v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$6;->a:I

    invoke-static {v0}, Lcom/bzbs/event/DashboardEvents;->a(I)V

    .line 736
    return-void
.end method
