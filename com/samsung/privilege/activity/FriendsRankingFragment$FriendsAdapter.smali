.class Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;
.super Landroid/widget/BaseAdapter;
.source "FriendsRankingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/FriendsRankingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FriendsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private font:Landroid/graphics/Typeface;

.field private gInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/FriendsRankingFragment;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 513
    .local p3, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/Friend;>;"
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 514
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->gInflater:Landroid/view/LayoutInflater;

    .line 515
    iput-object p3, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->data:Ljava/util/ArrayList;

    .line 516
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->font:Landroid/graphics/Typeface;

    .line 517
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;)Lcom/samsung/privilege/activity/FriendsRankingFragment;
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 525
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 529
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v4, 0x7f02039f

    const/4 v3, 0x0

    const/16 v10, 0x8

    const/4 v5, 0x0

    .line 553
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/privilege/bean/Friend;

    .line 555
    .local v6, "friend":Lcom/samsung/privilege/bean/Friend;
    const/4 v7, 0x0

    .line 556
    .local v7, "holder":Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;
    move-object v9, p2

    .line 558
    .local v9, "view":Landroid/view/View;
    if-eqz p2, :cond_19

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_156

    .line 559
    :cond_19
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->gInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300ec

    invoke-virtual {v0, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 560
    new-instance v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;

    .end local v7    # "holder":Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;
    invoke-direct {v7, p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;-><init>(Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;)V

    .line 562
    .restart local v7    # "holder":Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;
    const v0, 0x7f07032b

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutCaption:Landroid/widget/RelativeLayout;

    .line 563
    const v0, 0x7f07011f

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->tvCaption:Landroid/widget/TextView;

    .line 564
    const v0, 0x7f07032d

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imageGalaxyGift:Landroid/widget/ImageView;

    .line 565
    const v0, 0x7f07032c

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imageGift:Landroid/widget/ImageView;

    .line 567
    const v0, 0x7f07032e

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutFriend:Landroid/widget/RelativeLayout;

    .line 568
    const v0, 0x7f07032f

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutFriendShadow:Landroid/widget/RelativeLayout;

    .line 569
    const v0, 0x7f070330

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfileMe:Landroid/widget/ImageView;

    .line 570
    const v0, 0x7f070331

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfile:Landroid/widget/ImageView;

    .line 571
    const v0, 0x7f070332

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->tvFriendName:Landroid/widget/TextView;

    .line 572
    const v0, 0x7f070333

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutInvite:Landroid/widget/RelativeLayout;

    .line 573
    const v0, 0x7f070334

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imgInvite:Landroid/widget/ImageView;

    .line 574
    const v0, 0x7f070335

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->tvInvite:Landroid/widget/TextView;

    .line 576
    const v0, 0x7f070336

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutScore:Landroid/widget/RelativeLayout;

    .line 577
    const v0, 0x7f070337

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->tvScore:Landroid/widget/TextView;

    .line 578
    const v0, 0x7f070338

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->tvRank:Landroid/widget/TextView;

    .line 581
    :try_start_cc
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->tvCaption:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 582
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->tvFriendName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 583
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->tvInvite:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 584
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->tvScore:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 585
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->tvRank:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_ef} :catch_31c

    .line 590
    :goto_ef
    invoke-virtual {v9, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 595
    :goto_f2
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutScore:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15d

    .line 598
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imageGift:Landroid/widget/ImageView;

    const v2, 0x7f0202ba

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 603
    :goto_10b
    iget v0, v6, Lcom/samsung/privilege/bean/Friend;->layout_type:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_166

    .line 604
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutCaption:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 605
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutFriend:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 607
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->tvCaption:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    const v3, 0x7f0a0321

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imageGalaxyGift:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 609
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imageGift:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 676
    :goto_132
    new-instance v8, Lcom/samsung/privilege/bean/TagInvite;

    invoke-direct {v8}, Lcom/samsung/privilege/bean/TagInvite;-><init>()V

    .line 677
    .local v8, "tagInvite":Lcom/samsung/privilege/bean/TagInvite;
    iput-object v6, v8, Lcom/samsung/privilege/bean/TagInvite;->friend:Lcom/samsung/privilege/bean/Friend;

    .line 678
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutInvite:Landroid/widget/RelativeLayout;

    iput-object v0, v8, Lcom/samsung/privilege/bean/TagInvite;->layoutInvite:Landroid/widget/RelativeLayout;

    .line 679
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutInvite:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 681
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutInvite:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_150

    .line 682
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutInvite:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$1;-><init>(Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 690
    :cond_150
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutScore:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 692
    return-object v9

    .line 592
    .end local v8    # "tagInvite":Lcom/samsung/privilege/bean/TagInvite;
    :cond_156
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "holder":Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;
    check-cast v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;

    .restart local v7    # "holder":Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;
    goto :goto_f2

    .line 600
    :cond_15d
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imageGift:Landroid/widget/ImageView;

    const v2, 0x7f0202b9

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_10b

    .line 610
    :cond_166
    iget v0, v6, Lcom/samsung/privilege/bean/Friend;->layout_type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_18e

    .line 611
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutCaption:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 612
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutFriend:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 614
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->tvCaption:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    const v3, 0x7f0a0322

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imageGalaxyGift:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 616
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imageGift:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_132

    .line 617
    :cond_18e
    iget v0, v6, Lcom/samsung/privilege/bean/Friend;->layout_type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_223

    .line 618
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutCaption:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 619
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutFriend:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 620
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfileMe:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 621
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfile:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 622
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutScore:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 624
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfile:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 626
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->tvFriendName:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/samsung/privilege/bean/Friend;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "https://graph.facebook.com/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/samsung/privilege/bean/Friend;->uid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/picture?width=200&height=200"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "imageUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$8(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    iget-object v2, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfileMe:Landroid/widget/ImageView;

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 630
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->tvScore:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Score: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->gMyScore:J
    invoke-static {v3}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$9(Lcom/samsung/privilege/activity/FriendsRankingFragment;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pts."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->tvRank:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rank: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->gMyRank:I
    invoke-static {v3}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$10(Lcom/samsung/privilege/activity/FriendsRankingFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutInvite:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 634
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutFriendShadow:Landroid/widget/RelativeLayout;

    const v2, 0x7f02008b

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_132

    .line 635
    .end local v1    # "imageUrl":Ljava/lang/String;
    :cond_223
    iget v0, v6, Lcom/samsung/privilege/bean/Friend;->layout_type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2b0

    .line 636
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutCaption:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 637
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutFriend:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 638
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfileMe:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 639
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfile:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 640
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutScore:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 642
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfileMe:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 644
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->tvFriendName:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/samsung/privilege/bean/Friend;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "https://graph.facebook.com/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/samsung/privilege/bean/Friend;->uid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/picture?width=200&height=200"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 646
    .restart local v1    # "imageUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$8(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    iget-object v2, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfile:Landroid/widget/ImageView;

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 648
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->tvScore:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Score: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v6, Lcom/samsung/privilege/bean/Friend;->score:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pts."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->tvRank:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rank: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v6, Lcom/samsung/privilege/bean/Friend;->rank:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutInvite:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 652
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutFriendShadow:Landroid/widget/RelativeLayout;

    const v2, 0x7f020089

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_132

    .line 653
    .end local v1    # "imageUrl":Ljava/lang/String;
    :cond_2b0
    iget v0, v6, Lcom/samsung/privilege/bean/Friend;->layout_type:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_310

    .line 654
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutCaption:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 655
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutFriend:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 656
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfileMe:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 657
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfile:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 659
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfileMe:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 661
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->tvFriendName:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/samsung/privilege/bean/Friend;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "https://graph.facebook.com/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/samsung/privilege/bean/Friend;->uid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/picture?width=200&height=200"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 663
    .restart local v1    # "imageUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;->this$0:Lcom/samsung/privilege/activity/FriendsRankingFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsRankingFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->access$8(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    iget-object v2, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfile:Landroid/widget/ImageView;

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 665
    iget-boolean v0, v6, Lcom/samsung/privilege/bean/Friend;->isInvited:Z

    if-nez v0, :cond_30a

    .line 666
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutInvite:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 670
    :goto_300
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutFriendShadow:Landroid/widget/RelativeLayout;

    const v2, 0x7f02008a

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_132

    .line 668
    :cond_30a
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutInvite:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_300

    .line 672
    .end local v1    # "imageUrl":Ljava/lang/String;
    :cond_310
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutCaption:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 673
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter$ViewHolderInAppRow;->layoutFriend:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_132

    .line 586
    :catch_31c
    move-exception v0

    goto/16 :goto_ef
.end method
