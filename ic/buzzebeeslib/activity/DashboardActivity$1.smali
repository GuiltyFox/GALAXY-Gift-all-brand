.class Lic/buzzebeeslib/activity/DashboardActivity$1;
.super Ljava/lang/Object;
.source "DashboardActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/DashboardActivity;->qtMarketBzbs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/DashboardActivity;

.field private final synthetic val$imgCircle:[Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/DashboardActivity;[Landroid/widget/ImageView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/DashboardActivity$1;->this$0:Lic/buzzebeeslib/activity/DashboardActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/DashboardActivity$1;->val$imgCircle:[Landroid/widget/ImageView;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "arg0"    # I

    .prologue
    .line 121
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 116
    return-void
.end method

.method public onPageSelected(I)V
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 101
    iget-object v1, p0, Lic/buzzebeeslib/activity/DashboardActivity$1;->this$0:Lic/buzzebeeslib/activity/DashboardActivity;

    iget-object v1, v1, Lic/buzzebeeslib/activity/DashboardActivity;->arrImg:[Ljava/lang/Integer;

    array-length v1, v1

    if-ne p1, v1, :cond_12

    .line 102
    iget-object v1, p0, Lic/buzzebeeslib/activity/DashboardActivity$1;->this$0:Lic/buzzebeeslib/activity/DashboardActivity;

    # getter for: Lic/buzzebeeslib/activity/DashboardActivity;->contentQT:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lic/buzzebeeslib/activity/DashboardActivity;->access$0(Lic/buzzebeeslib/activity/DashboardActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 104
    :cond_12
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget-object v1, p0, Lic/buzzebeeslib/activity/DashboardActivity$1;->this$0:Lic/buzzebeeslib/activity/DashboardActivity;

    iget-object v1, v1, Lic/buzzebeeslib/activity/DashboardActivity;->arrImg:[Ljava/lang/Integer;

    array-length v1, v1

    if-lt v0, v1, :cond_1b

    .line 111
    return-void

    .line 105
    :cond_1b
    if-ne v0, p1, :cond_29

    .line 106
    iget-object v1, p0, Lic/buzzebeeslib/activity/DashboardActivity$1;->val$imgCircle:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget v2, Lic/buzzebeeslib/R$drawable;->rounded_circle_selected:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 108
    :cond_29
    iget-object v1, p0, Lic/buzzebeeslib/activity/DashboardActivity$1;->val$imgCircle:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget v2, Lic/buzzebeeslib/R$drawable;->rounded_circle:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_26
.end method
