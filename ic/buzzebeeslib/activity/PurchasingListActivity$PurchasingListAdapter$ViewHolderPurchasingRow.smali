.class Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;
.super Ljava/lang/Object;
.source "PurchasingListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderPurchasingRow"
.end annotation


# instance fields
.field public LayoutCommand:Landroid/widget/RelativeLayout;

.field public LayoutExpirationDate:Landroid/widget/RelativeLayout;

.field public imgAward:Landroid/widget/ImageView;

.field public imgCommand:Landroid/widget/ImageView;

.field public layoutMain:Landroid/widget/LinearLayout;

.field final synthetic this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;

.field public tvAwardName:Landroid/widget/TextView;

.field public tvCommand:Landroid/widget/TextView;

.field public tvDec:Landroid/widget/TextView;

.field public tvExpirationDate:Landroid/widget/TextView;

.field public tvLabelDate:Landroid/widget/TextView;

.field public tvLabelExpiration:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;)V
    .registers 2

    .prologue
    .line 1858
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter$ViewHolderPurchasingRow;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
