.class Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$2;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a(Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;)V
    .registers 3

    .prologue
    .line 1880
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$2;->b:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1889
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 1894
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 1884
    return-void
.end method
