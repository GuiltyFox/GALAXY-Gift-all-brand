.class Lcom/samsung/privilege/util/AnimationBadge$1;
.super Ljava/lang/Object;
.source "AnimationBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/AnimationBadge;->showDialogBadge(Landroid/content/Context;Lcom/samsung/privilege/bean/BadgeAlert;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$dialogBadge:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/AnimationBadge$1;->val$dialogBadge:Landroid/app/Dialog;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    sget-object v0, Lcom/samsung/privilege/util/AnimationBadge;->objCampaignListActivity:Lcom/samsung/privilege/activity/CampaignListActivity;

    if-eqz v0, :cond_e

    .line 98
    sget-object v0, Lcom/samsung/privilege/util/AnimationBadge;->objCampaignListActivity:Lcom/samsung/privilege/activity/CampaignListActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->gIsShowingMessage:Z

    .line 99
    sget-object v0, Lcom/samsung/privilege/util/AnimationBadge;->objCampaignListActivity:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->checkAndShowDialogMessagePopup()V

    .line 102
    :cond_e
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationBadge$1;->val$dialogBadge:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 103
    return-void
.end method
