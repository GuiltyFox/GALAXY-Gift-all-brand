.class Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;
.super Landroid/widget/BaseAdapter;
.source "PlaceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/PlaceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlacesListNewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;
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

.field final synthetic this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/fragment/PlaceListFragment;Landroid/content/Context;Ljava/util/ArrayList;)V
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
    .line 930
    .local p3, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/Place;>;"
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 927
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->formatter:Ljava/text/NumberFormat;

    .line 928
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->formatterHasDigi:Ljava/text/NumberFormat;

    .line 931
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->gInflater:Landroid/view/LayoutInflater;

    .line 932
    iput-object p3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->data:Ljava/util/ArrayList;

    .line 933
    return-void
.end method


# virtual methods
.method public doGotoMap(Landroid/view/View;)V
    .registers 19
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1082
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-virtual {v11}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    if-eqz v11, :cond_ce

    .line 1084
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-virtual {v12}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const-string v13, ""

    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    sget v15, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual {v14, v15}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-static/range {v12 .. v16}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v12

    invoke-static {v11, v12}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$17(Lic/buzzebeeslib/fragment/PlaceListFragment;Landroid/app/ProgressDialog;)V

    .line 1086
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lic/buzzebeeslib/bean/Place;

    .line 1092
    .local v10, "place":Lic/buzzebeeslib/bean/Place;
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentLat:D
    invoke-static {v11}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$11(Lic/buzzebeeslib/fragment/PlaceListFragment;)D

    move-result-wide v4

    .line 1093
    .local v4, "latitude_saddr":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentLon:D
    invoke-static {v11}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$12(Lic/buzzebeeslib/fragment/PlaceListFragment;)D

    move-result-wide v8

    .line 1094
    .local v8, "longitude_saddr":D
    iget v11, v10, Lic/buzzebeeslib/bean/Place;->latitude:F

    float-to-double v2, v11

    .line 1095
    .local v2, "latitude_daddr":D
    iget v11, v10, Lic/buzzebeeslib/bean/Place;->longitude:F

    float-to-double v6, v11

    .line 1097
    .local v6, "longitude_daddr":D
    const-wide/16 v11, 0x0

    cmpl-double v11, v4, v11

    if-nez v11, :cond_54

    const-wide/16 v11, 0x0

    cmpl-double v11, v8, v11

    if-eqz v11, :cond_bc

    :cond_54
    const-wide/16 v11, 0x0

    cmpl-double v11, v2, v11

    if-nez v11, :cond_60

    const-wide/16 v11, 0x0

    cmpl-double v11, v6, v11

    if-eqz v11, :cond_bc

    .line 1098
    :cond_60
    new-instance v1, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "http://maps.google.com/maps?saddr="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&daddr="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v1, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1099
    .local v1, "intent":Landroid/content/Intent;
    const-string v11, "com.google.android.apps.maps"

    const-string v12, "com.google.android.maps.MapsActivity"

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1100
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-virtual {v11, v1}, Lic/buzzebeeslib/fragment/PlaceListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1107
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_a6
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$18(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/app/ProgressDialog;

    move-result-object v11

    if-eqz v11, :cond_bb

    .line 1108
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$18(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/app/ProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1114
    .end local v2    # "latitude_daddr":D
    .end local v4    # "latitude_saddr":D
    .end local v6    # "longitude_daddr":D
    .end local v8    # "longitude_saddr":D
    .end local v10    # "place":Lic/buzzebeeslib/bean/Place;
    :cond_bb
    :goto_bb
    return-void

    .line 1103
    .restart local v2    # "latitude_daddr":D
    .restart local v4    # "latitude_saddr":D
    .restart local v6    # "longitude_daddr":D
    .restart local v8    # "longitude_saddr":D
    .restart local v10    # "place":Lic/buzzebeeslib/bean/Place;
    :cond_bc
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    sget v13, Lic/buzzebeeslib/R$string;->place_message_show_map_error1:I

    invoke-virtual {v12, v13}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    # invokes: Lic/buzzebeeslib/fragment/PlaceListFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/PlaceListFragment;Ljava/lang/String;)V

    goto :goto_a6

    .line 1112
    .end local v2    # "latitude_daddr":D
    .end local v4    # "latitude_saddr":D
    .end local v6    # "longitude_daddr":D
    .end local v8    # "longitude_saddr":D
    .end local v10    # "place":Lic/buzzebeeslib/bean/Place;
    :cond_ce
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    sget v13, Lic/buzzebeeslib/R$string;->place_message_show_map_error1:I

    invoke-virtual {v12, v13}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    # invokes: Lic/buzzebeeslib/fragment/PlaceListFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/PlaceListFragment;Ljava/lang/String;)V

    goto :goto_bb
.end method

.method public doPlaceReview(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1117
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1124
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    const-string v1, "PlaceReviewList2Activity.class"

    # invokes: Lic/buzzebeeslib/fragment/PlaceListFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/PlaceListFragment;Ljava/lang/String;)V

    .line 1128
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$18(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1129
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$18(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1134
    :cond_20
    :goto_20
    return-void

    .line 1132
    :cond_21
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    sget v2, Lic/buzzebeeslib/R$string;->place_message_show_reveiw_place_error1:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lic/buzzebeeslib/fragment/PlaceListFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/PlaceListFragment;Ljava/lang/String;)V

    goto :goto_20
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 937
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 942
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 947
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 17
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 969
    const/4 v11, 0x0

    .line 971
    .local v11, "place":Lic/buzzebeeslib/bean/Place;
    :try_start_1
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/Place;

    invoke-virtual {v1}, Lic/buzzebeeslib/bean/Place;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lic/buzzebeeslib/bean/Place;

    move-object v11, v0
    :try_end_11
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_11} :catch_1bf

    .line 976
    :goto_11
    const/4 v10, 0x0

    .line 977
    .local v10, "holder":Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;
    move-object v12, p2

    .line 979
    .local v12, "view":Landroid/view/View;
    if-eqz p2, :cond_1b

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1c5

    .line 980
    :cond_1b
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->gInflater:Landroid/view/LayoutInflater;

    sget v3, Lic/buzzebeeslib/R$layout;->bz_place_fragment_row:I

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 981
    new-instance v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;

    .end local v10    # "holder":Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;
    invoke-direct {v10, p0}, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;)V

    .line 982
    .restart local v10    # "holder":Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;
    sget v1, Lic/buzzebeeslib/R$id;->imgPlace:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->imgPlace:Landroid/widget/ImageView;

    .line 983
    sget v1, Lic/buzzebeeslib/R$id;->tvPlaceName:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvPlaceName:Landroid/widget/TextView;

    .line 984
    sget v1, Lic/buzzebeeslib/R$id;->tvPlaceWereHere:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvPlaceWereHere:Landroid/widget/TextView;

    .line 985
    sget v1, Lic/buzzebeeslib/R$id;->tvDistance:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvDistance:Landroid/widget/TextView;

    .line 986
    sget v1, Lic/buzzebeeslib/R$id;->tvCountReview:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvCountReview:Landroid/widget/TextView;

    .line 988
    sget v1, Lic/buzzebeeslib/R$id;->tvLabelReview:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvLabelReview:Landroid/widget/TextView;

    .line 989
    sget v1, Lic/buzzebeeslib/R$id;->tvLabelMap:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvLabelMap:Landroid/widget/TextView;

    .line 990
    sget v1, Lic/buzzebeeslib/R$id;->tvLabelMarketPlace:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvLabelMarketPlace:Landroid/widget/TextView;

    .line 992
    sget v1, Lic/buzzebeeslib/R$id;->tvLabelPlaceWereHere:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvLabelPlaceWereHere:Landroid/widget/TextView;

    .line 993
    sget v1, Lic/buzzebeeslib/R$id;->tvLabelDistance:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvLabelDistance:Landroid/widget/TextView;

    .line 995
    sget v1, Lic/buzzebeeslib/R$id;->layoutMain:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->layoutMain:Landroid/widget/RelativeLayout;

    .line 996
    sget v1, Lic/buzzebeeslib/R$id;->LayoutReview:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutReview:Landroid/widget/RelativeLayout;

    .line 997
    sget v1, Lic/buzzebeeslib/R$id;->LayoutMap:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutMap:Landroid/widget/RelativeLayout;

    .line 998
    sget v1, Lic/buzzebeeslib/R$id;->LayoutMarketPlace:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutMarketPlace:Landroid/widget/RelativeLayout;

    .line 999
    invoke-virtual {v12, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1006
    :goto_ba
    :try_start_ba
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "fonts/kit55p.ttf"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 1008
    .local v9, "font":Landroid/graphics/Typeface;
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvPlaceName:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1009
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvPlaceWereHere:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1010
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvDistance:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1011
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvCountReview:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1012
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvLabelReview:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1013
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvLabelMap:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1014
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvLabelMarketPlace:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1015
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvLabelPlaceWereHere:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1016
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvLabelDistance:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_f7} :catch_1fa

    .line 1022
    .end local v9    # "font":Landroid/graphics/Typeface;
    :goto_f7
    :try_start_f7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "https://graph.facebook.com/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lic/buzzebeeslib/bean/Place;->id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/picture?width=200&height=200"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1023
    .local v2, "photo_src":Ljava/lang/String;
    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$15()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "photo_src "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$16(Lic/buzzebeeslib/fragment/PlaceListFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v1

    iget-object v3, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->imgPlace:Landroid/widget/ImageView;

    const/4 v4, 0x0

    sget v5, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_133} :catch_1cd

    .line 1034
    .end local v2    # "photo_src":Ljava/lang/String;
    :cond_133
    :goto_133
    :try_start_133
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvPlaceName:Landroid/widget/TextView;

    iget-object v3, v11, Lic/buzzebeeslib/bean/Place;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_13a} :catch_1e9

    .line 1039
    :goto_13a
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvPlaceWereHere:Landroid/widget/TextView;

    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->formatter:Ljava/text/NumberFormat;

    iget-wide v4, v11, Lic/buzzebeeslib/bean/Place;->were_here_count:J

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1040
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvDistance:Landroid/widget/TextView;

    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget v4, v11, Lic/buzzebeeslib/bean/Place;->distance:F

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->getKMFromM(F)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvCountReview:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v11, Lic/buzzebeeslib/bean/Place;->buzz:I

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutReview:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v11}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1047
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutMap:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v11}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1050
    if-eqz v11, :cond_196

    .line 1051
    iget-boolean v1, v11, Lic/buzzebeeslib/bean/Place;->isBuzzeBeesPlace:Z

    if-eqz v1, :cond_1f3

    .line 1052
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutMarketPlace:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1058
    :cond_196
    :goto_196
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutMarketPlace:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1059
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutReview:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1061
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutReview:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1b0

    .line 1062
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutReview:Landroid/widget/RelativeLayout;

    new-instance v3, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$1;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$1;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1070
    :cond_1b0
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutMap:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1be

    .line 1071
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutMap:Landroid/widget/RelativeLayout;

    new-instance v3, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$2;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$2;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1078
    :cond_1be
    return-object v12

    .line 972
    .end local v10    # "holder":Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;
    .end local v12    # "view":Landroid/view/View;
    :catch_1bf
    move-exception v8

    .line 973
    .local v8, "e1":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v8}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto/16 :goto_11

    .line 1001
    .end local v8    # "e1":Ljava/lang/CloneNotSupportedException;
    .restart local v10    # "holder":Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;
    .restart local v12    # "view":Landroid/view/View;
    :cond_1c5
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "holder":Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;
    check-cast v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;

    .restart local v10    # "holder":Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;
    goto/16 :goto_ba

    .line 1027
    :catch_1cd
    move-exception v7

    .line 1028
    .local v7, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_133

    .line 1029
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->imgPlace:Landroid/widget/ImageView;

    sget v3, Lic/buzzebeeslib/R$drawable;->bz_place_unknow:I

    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-virtual {v4}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_133

    .line 1035
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1e9
    move-exception v7

    .line 1036
    .restart local v7    # "e":Ljava/lang/Exception;
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->tvPlaceName:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13a

    .line 1054
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1f3
    iget-object v1, v10, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter$ViewHolderPlaceItem;->LayoutMarketPlace:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_196

    .line 1017
    :catch_1fa
    move-exception v1

    goto/16 :goto_f7
.end method
