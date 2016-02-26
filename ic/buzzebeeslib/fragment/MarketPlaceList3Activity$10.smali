.class Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$10;
.super Ljava/lang/Object;
.source "MarketPlaceList3Activity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->qtMarketBzbs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

.field private final synthetic val$imgCircle:[Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;[Landroid/widget/ImageView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$10;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    iput-object p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$10;->val$imgCircle:[Landroid/widget/ImageView;

    .line 1871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "arg0"    # I

    .prologue
    .line 1896
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 1891
    return-void
.end method

.method public onPageSelected(I)V
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 1876
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$10;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    iget-object v1, v1, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->arrImg:[Ljava/lang/Integer;

    array-length v1, v1

    if-ne p1, v1, :cond_12

    .line 1877
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$10;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->contentQT:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$37(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1879
    :cond_12
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$10;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    iget-object v1, v1, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->arrImg:[Ljava/lang/Integer;

    array-length v1, v1

    if-lt v0, v1, :cond_1b

    .line 1886
    return-void

    .line 1880
    :cond_1b
    if-ne v0, p1, :cond_29

    .line 1881
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$10;->val$imgCircle:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget v2, Lic/buzzebeeslib/R$drawable;->rounded_circle_selected:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1879
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1883
    :cond_29
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$10;->val$imgCircle:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget v2, Lic/buzzebeeslib/R$drawable;->rounded_circle:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_26
.end method
