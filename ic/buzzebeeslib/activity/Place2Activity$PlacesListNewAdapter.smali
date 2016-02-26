.class Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;
.super Landroid/widget/BaseAdapter;
.source "Place2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/Place2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlacesListNewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/Place;",
            ">;"
        }
    .end annotation
.end field

.field private formatter:Ljava/text/NumberFormat;

.field private formatterHasDigi:Ljava/text/NumberFormat;

.field private gInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lic/buzzebeeslib/activity/Place2Activity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/Place2Activity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 927
    .local p3, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/Place;>;"
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 924
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->formatter:Ljava/text/NumberFormat;

    .line 925
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->formatterHasDigi:Ljava/text/NumberFormat;

    .line 928
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->gInflater:Landroid/view/LayoutInflater;

    .line 929
    iput-object p3, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->data:Ljava/util/ArrayList;

    .line 930
    return-void
.end method


# virtual methods
.method public doGotoMap(Landroid/view/View;)V
    .registers 20
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1087
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    const-string v14, ""

    move-object/from16 v0, p0

    iget-object v15, v0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    sget v16, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual/range {v15 .. v16}, Lic/buzzebeeslib/activity/Place2Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-static/range {v13 .. v17}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v13

    invoke-static {v12, v13}, Lic/buzzebeeslib/activity/Place2Activity;->access$17(Lic/buzzebeeslib/activity/Place2Activity;Landroid/app/ProgressDialog;)V

    .line 1089
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/buzzebeeslib/bean/Place;

    .line 1095
    .local v3, "place":Lic/buzzebeeslib/bean/Place;
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLat:D
    invoke-static {v12}, Lic/buzzebeeslib/activity/Place2Activity;->access$11(Lic/buzzebeeslib/activity/Place2Activity;)D

    move-result-wide v6

    .line 1096
    .local v6, "latitude_saddr":D
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLon:D
    invoke-static {v12}, Lic/buzzebeeslib/activity/Place2Activity;->access$12(Lic/buzzebeeslib/activity/Place2Activity;)D

    move-result-wide v10

    .line 1097
    .local v10, "longitude_saddr":D
    iget v12, v3, Lic/buzzebeeslib/bean/Place;->latitude:F

    float-to-double v4, v12

    .line 1098
    .local v4, "latitude_daddr":D
    iget v12, v3, Lic/buzzebeeslib/bean/Place;->longitude:F

    float-to-double v8, v12

    .line 1100
    .local v8, "longitude_daddr":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v6, v12

    if-nez v12, :cond_47

    const-wide/16 v12, 0x0

    cmpl-double v12, v10, v12

    if-eqz v12, :cond_af

    :cond_47
    const-wide/16 v12, 0x0

    cmpl-double v12, v4, v12

    if-nez v12, :cond_53

    const-wide/16 v12, 0x0

    cmpl-double v12, v8, v12

    if-eqz v12, :cond_af

    .line 1101
    :cond_53
    new-instance v2, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "http://maps.google.com/maps?saddr="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&daddr="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v2, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1102
    .local v2, "intent":Landroid/content/Intent;
    const-string v12, "com.google.android.apps.maps"

    const-string v13, "com.google.android.maps.MapsActivity"

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1103
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-virtual {v12, v2}, Lic/buzzebeeslib/activity/Place2Activity;->startActivity(Landroid/content/Intent;)V

    .line 1109
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_99
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v12}, Lic/buzzebeeslib/activity/Place2Activity;->access$18(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/app/ProgressDialog;

    move-result-object v12

    if-eqz v12, :cond_ae

    .line 1110
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v12}, Lic/buzzebeeslib/activity/Place2Activity;->access$18(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/app/ProgressDialog;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1112
    :cond_ae
    return-void

    .line 1105
    :cond_af
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    sget v14, Lic/buzzebeeslib/R$string;->place_message_show_map_error1:I

    invoke-virtual {v13, v14}, Lic/buzzebeeslib/activity/Place2Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    # invokes: Lic/buzzebeeslib/activity/Place2Activity;->showToast(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lic/buzzebeeslib/activity/Place2Activity;->access$2(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/String;)V

    goto :goto_99
.end method

.method public doPlaceReview(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1121
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    const-string v1, "PlaceReviewList2Activity.class"

    # invokes: Lic/buzzebeeslib/activity/Place2Activity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/Place2Activity;->access$2(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/String;)V

    .line 1123
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$18(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1124
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$18(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1126
    :cond_18
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 934
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 939
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 944
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 17
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 966
    const/4 v11, 0x0

    .line 968
    .local v11, "place":Lic/buzzebeeslib/bean/Place;
    :try_start_1
    iget-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/bean/Place;

    invoke-virtual {v2}, Lic/buzzebeeslib/bean/Place;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lic/buzzebeeslib/bean/Place;

    move-object v11, v0
    :try_end_11
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_11} :catch_1e5

    .line 973
    :goto_11
    const/4 v10, 0x0

    .line 974
    .local v10, "holder":Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;
    move-object v12, p2

    .line 976
    .local v12, "view":Landroid/view/View;
    if-eqz p2, :cond_1b

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1eb

    .line 977
    :cond_1b
    iget-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->gInflater:Landroid/view/LayoutInflater;

    sget v4, Lic/buzzebeeslib/R$layout;->bz_place_fragment_row:I

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 978
    new-instance v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;

    .end local v10    # "holder":Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;
    invoke-direct {v10, p0}, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;-><init>(Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;)V

    .line 979
    .restart local v10    # "holder":Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;
    sget v2, Lic/buzzebeeslib/R$id;->imgPlace:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->imgPlace:Landroid/widget/ImageView;

    .line 980
    sget v2, Lic/buzzebeeslib/R$id;->tvPlaceName:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvPlaceName:Landroid/widget/TextView;

    .line 981
    sget v2, Lic/buzzebeeslib/R$id;->tvPlaceWereHere:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvPlaceWereHere:Landroid/widget/TextView;

    .line 982
    sget v2, Lic/buzzebeeslib/R$id;->tvDistance:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvDistance:Landroid/widget/TextView;

    .line 983
    sget v2, Lic/buzzebeeslib/R$id;->tvCountReview:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvCountReview:Landroid/widget/TextView;

    .line 985
    sget v2, Lic/buzzebeeslib/R$id;->tvLabelReview:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvLabelReview:Landroid/widget/TextView;

    .line 986
    sget v2, Lic/buzzebeeslib/R$id;->tvLabelMap:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvLabelMap:Landroid/widget/TextView;

    .line 987
    sget v2, Lic/buzzebeeslib/R$id;->tvLabelMarketPlace:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvLabelMarketPlace:Landroid/widget/TextView;

    .line 989
    sget v2, Lic/buzzebeeslib/R$id;->tvLabelPlaceWereHere:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvLabelPlaceWereHere:Landroid/widget/TextView;

    .line 990
    sget v2, Lic/buzzebeeslib/R$id;->tvLabelDistance:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvLabelDistance:Landroid/widget/TextView;

    .line 992
    sget v2, Lic/buzzebeeslib/R$id;->layoutMain:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->layoutMain:Landroid/widget/RelativeLayout;

    .line 993
    sget v2, Lic/buzzebeeslib/R$id;->LayoutReview:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutReview:Landroid/widget/RelativeLayout;

    .line 994
    sget v2, Lic/buzzebeeslib/R$id;->LayoutMap:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutMap:Landroid/widget/RelativeLayout;

    .line 995
    sget v2, Lic/buzzebeeslib/R$id;->LayoutMarketPlace:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutMarketPlace:Landroid/widget/RelativeLayout;

    .line 996
    invoke-virtual {v12, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1018
    :goto_ba
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvPlaceName:Landroid/widget/TextView;

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/Place2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1019
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvPlaceWereHere:Landroid/widget/TextView;

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/Place2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1020
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvDistance:Landroid/widget/TextView;

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/Place2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1021
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvCountReview:Landroid/widget/TextView;

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/Place2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1022
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvLabelReview:Landroid/widget/TextView;

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/Place2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1023
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvLabelMap:Landroid/widget/TextView;

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/Place2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1024
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvLabelMarketPlace:Landroid/widget/TextView;

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/Place2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1025
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvLabelPlaceWereHere:Landroid/widget/TextView;

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/Place2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1026
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvLabelDistance:Landroid/widget/TextView;

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/Place2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1029
    :try_start_11d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "https://graph.facebook.com/"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v11, Lic/buzzebeeslib/bean/Place;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/picture?width=200&height=200"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1030
    .local v3, "photo_src":Ljava/lang/String;
    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->TAG:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/activity/Place2Activity;->access$15()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "photo_src "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    iget-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lic/buzzebeeslib/activity/Place2Activity;->access$16(Lic/buzzebeeslib/activity/Place2Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    iget-object v4, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->imgPlace:Landroid/widget/ImageView;

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_159} :catch_1f3

    .line 1039
    .end local v3    # "photo_src":Ljava/lang/String;
    :goto_159
    :try_start_159
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvPlaceName:Landroid/widget/TextView;

    iget-object v4, v11, Lic/buzzebeeslib/bean/Place;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_160} :catch_203

    .line 1044
    :goto_160
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvPlaceWereHere:Landroid/widget/TextView;

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->formatter:Ljava/text/NumberFormat;

    iget-wide v6, v11, Lic/buzzebeeslib/bean/Place;->were_here_count:J

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvDistance:Landroid/widget/TextView;

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget v5, v11, Lic/buzzebeeslib/bean/Place;->distance:F

    invoke-static {v5}, Lic/buzzebeeslib/util/BBUtil;->getKMFromM(F)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvCountReview:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v11, Lic/buzzebeeslib/bean/Place;->buzz:I

    invoke-static {v5}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1051
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutReview:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1052
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutMap:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1055
    if-eqz v11, :cond_1bc

    .line 1056
    iget-boolean v2, v11, Lic/buzzebeeslib/bean/Place;->isBuzzeBeesPlace:Z

    if-eqz v2, :cond_20d

    .line 1057
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutMarketPlace:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1063
    :cond_1bc
    :goto_1bc
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutMarketPlace:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1064
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutReview:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1066
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutReview:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1d6

    .line 1067
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutReview:Landroid/widget/RelativeLayout;

    new-instance v4, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$1;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$1;-><init>(Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1075
    :cond_1d6
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutMap:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1e4

    .line 1076
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutMap:Landroid/widget/RelativeLayout;

    new-instance v4, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$2;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$2;-><init>(Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1083
    :cond_1e4
    return-object v12

    .line 969
    .end local v10    # "holder":Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;
    .end local v12    # "view":Landroid/view/View;
    :catch_1e5
    move-exception v9

    .line 970
    .local v9, "e1":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v9}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto/16 :goto_11

    .line 998
    .end local v9    # "e1":Ljava/lang/CloneNotSupportedException;
    .restart local v10    # "holder":Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;
    .restart local v12    # "view":Landroid/view/View;
    :cond_1eb
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "holder":Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;
    check-cast v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;

    .restart local v10    # "holder":Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;
    goto/16 :goto_ba

    .line 1034
    :catch_1f3
    move-exception v8

    .line 1035
    .local v8, "e":Ljava/lang/Exception;
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->imgPlace:Landroid/widget/ImageView;

    sget v4, Lic/buzzebeeslib/R$drawable;->bz_place_unknow:I

    iget-object v5, p0, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/Place2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_159

    .line 1040
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_203
    move-exception v8

    .line 1041
    .restart local v8    # "e":Ljava/lang/Exception;
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->tvPlaceName:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_160

    .line 1059
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_20d
    iget-object v2, v10, Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutMarketPlace:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1bc
.end method
