.class Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$11;
.super Ljava/lang/Object;
.source "MarketPlaceReviewListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$11;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 924
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 925
    return-void
.end method
