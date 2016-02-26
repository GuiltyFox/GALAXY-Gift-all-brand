.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetail2Activity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;

.field private final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;Landroid/widget/ImageView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter$1;->val$imageView:Landroid/widget/ImageView;

    .line 4389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 6

    .prologue
    .line 4392
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4394
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    .line 4395
    .local v1, "gLayoutImageWidth":I
    mul-int/lit8 v3, v1, 0x2

    div-int/lit8 v0, v3, 0x3

    .line 4396
    .local v0, "gLayoutImageHeight":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4397
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xe

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4398
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4399
    return-void
.end method
