.class Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter$1;
.super Ljava/lang/Object;
.source "PurchasingListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;

    .line 1055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 1059
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v0

    # invokes: Lic/buzzebeeslib/activity/PurchasingListActivity;->resetFilter()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$10(Lic/buzzebeeslib/activity/PurchasingListActivity;)V

    .line 1061
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gImgFilterCategoryCheckbox:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$11(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_icon_read_ton:I

    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v3

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1063
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lic/buzzebeeslib/bean/CampaignCategory;

    .line 1064
    .local v8, "category":Lic/buzzebeeslib/bean/CampaignCategory;
    iput-boolean v1, v8, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    .line 1065
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v0

    iget-object v2, v8, Lic/buzzebeeslib/bean/CampaignCategory;->Cat:Ljava/lang/String;

    invoke-static {v0, v2}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$12(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;)V

    .line 1067
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v0

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->etTextSearch:Landroid/widget/EditText;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$13(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;
    invoke-static {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$14(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterPoints:J
    invoke-static {v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$15(Lic/buzzebeeslib/activity/PurchasingListActivity;)J

    move-result-wide v4

    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v6}, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v6

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCenter:Ljava/lang/String;
    invoke-static {v6}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$16(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v7

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v7}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$17(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;

    move-result-object v7

    # invokes: Lic/buzzebeeslib/activity/PurchasingListActivity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v7}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$18(Lic/buzzebeeslib/activity/PurchasingListActivity;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1069
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v0

    invoke-static {v0, v9}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$19(Lic/buzzebeeslib/activity/PurchasingListActivity;Z)V

    .line 1070
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$20(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/tutorial/menuList/animations/CollapseAnimation;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$20(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gScreenWidth:I
    invoke-static {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$21(Lic/buzzebeeslib/activity/PurchasingListActivity;)I

    move-result v3

    int-to-double v4, v3

    const-wide v6, 0x3fed99999999999aL

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/16 v4, 0x14

    invoke-direct {v1, v2, v9, v3, v4}, Lcom/tutorial/menuList/animations/CollapseAnimation;-><init>(Landroid/view/View;III)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1071
    return-void
.end method
