.class Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;
.super Ljava/lang/Object;
.source "PlaceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderPlaceItem"
.end annotation


# instance fields
.field LayoutMap:Landroid/widget/RelativeLayout;

.field LayoutMarketPlace:Landroid/widget/RelativeLayout;

.field LayoutReview:Landroid/widget/RelativeLayout;

.field imgPlace:Landroid/widget/ImageView;

.field layoutMain:Landroid/widget/RelativeLayout;

.field final synthetic this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;

.field tvCountReview:Landroid/widget/TextView;

.field tvDistance:Landroid/widget/TextView;

.field tvLabelDistance:Landroid/widget/TextView;

.field tvLabelMap:Landroid/widget/TextView;

.field tvLabelMarketPlace:Landroid/widget/TextView;

.field tvLabelPlaceWereHere:Landroid/widget/TextView;

.field tvLabelReview:Landroid/widget/TextView;

.field tvPlaceName:Landroid/widget/TextView;

.field tvPlaceWereHere:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;)V
    .registers 2

    .prologue
    .line 950
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->this$1:Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
