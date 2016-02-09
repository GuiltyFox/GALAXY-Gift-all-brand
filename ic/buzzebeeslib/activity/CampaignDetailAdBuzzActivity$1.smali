.class Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$1;
.super Ljava/lang/Object;
.source "CampaignDetailAdBuzzActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 345
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gImgNext_01:Landroid/widget/ImageView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$11(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gImgPrev_01:Landroid/widget/ImageView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$12(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a3

    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 352
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$10(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/control/CustomPager;->getCurrentItem()I

    move-result v0

    .line 353
    .local v0, "IntCurrentPage":I
    const/4 v1, 0x0

    .line 354
    .local v1, "intLast":I
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    if-eqz v2, :cond_64

    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_64

    .line 355
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 357
    :cond_64
    if-lez v1, :cond_6f

    .line 358
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gImgNext_01:Landroid/widget/ImageView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$11(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    :cond_6f
    const-string v2, "campaign.adbuzz"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPageSelected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    if-nez v0, :cond_a4

    .line 363
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gImgPrev_01:Landroid/widget/ImageView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$12(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    if-eq v0, v1, :cond_99

    .line 365
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gImgNext_01:Landroid/widget/ImageView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$11(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 376
    :cond_99
    :goto_99
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->cancelTimer()V
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$13(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)V

    .line 377
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->countDownTimer()V
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$14(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)V

    .line 381
    .end local v0    # "IntCurrentPage":I
    .end local v1    # "intLast":I
    :cond_a3
    return v5

    .line 368
    .restart local v0    # "IntCurrentPage":I
    .restart local v1    # "intLast":I
    :cond_a4
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gImgPrev_01:Landroid/widget/ImageView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$12(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    if-ne v0, v1, :cond_b9

    .line 370
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gImgNext_01:Landroid/widget/ImageView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$11(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_99

    .line 372
    :cond_b9
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gImgNext_01:Landroid/widget/ImageView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$11(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_99
.end method
