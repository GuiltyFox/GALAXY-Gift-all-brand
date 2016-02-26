.class Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$4;
.super Ljava/lang/Object;
.source "CampaignListPullToRefresh.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$4;->this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1036
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1038
    return-void
.end method
