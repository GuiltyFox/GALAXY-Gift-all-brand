.class Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$3;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->addHeaderAndFooter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

.field private final synthetic val$strImageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$3;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$3;->val$strImageUrl:Ljava/lang/String;

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 586
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$3;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$3;->val$strImageUrl:Ljava/lang/String;

    # invokes: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->doViewPhotoSmart(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$35(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Ljava/lang/String;)V

    .line 587
    return-void
.end method
