.class Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;
.super Landroid/widget/BaseAdapter;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FriendsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;
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

.field final synthetic this$0:Lcom/samsung/privilege/activity/FriendsFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/FriendsFragment;Landroid/content/Context;Ljava/util/ArrayList;)V
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
    .line 436
    .local p3, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/Friend;>;"
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 437
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;->gInflater:Landroid/view/LayoutInflater;

    .line 438
    iput-object p3, p0, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;->data:Ljava/util/ArrayList;

    .line 439
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;->font:Landroid/graphics/Typeface;

    .line 440
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;)Lcom/samsung/privilege/activity/FriendsFragment;
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 448
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 452
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v4, 0x7f0203a7

    const/4 v3, 0x0

    const/16 v10, 0x8

    const/4 v5, 0x0

    .line 472
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/privilege/bean/Friend;

    .line 474
    .local v6, "friend":Lcom/samsung/privilege/bean/Friend;
    const/4 v7, 0x0

    .line 475
    .local v7, "holder":Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;
    move-object v9, p2

    .line 477
    .local v9, "view":Landroid/view/View;
    if-eqz p2, :cond_19

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11d

    .line 478
    :cond_19
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;->gInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300ee

    invoke-virtual {v0, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 479
    new-instance v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;

    .end local v7    # "holder":Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;
    invoke-direct {v7, p0}, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;-><init>(Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;)V

    .line 481
    .restart local v7    # "holder":Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;
    const v0, 0x7f0c0338

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutCaption:Landroid/widget/RelativeLayout;

    .line 482
    const v0, 0x7f0c011f

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->tvCaption:Landroid/widget/TextView;

    .line 483
    const v0, 0x7f0c033a

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imageGalaxyGift:Landroid/widget/ImageView;

    .line 484
    const v0, 0x7f0c0339

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imageGift:Landroid/widget/ImageView;

    .line 486
    const v0, 0x7f0c033b

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutFriend:Landroid/widget/RelativeLayout;

    .line 487
    const v0, 0x7f0c033c

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutFriendShadow:Landroid/widget/RelativeLayout;

    .line 488
    const v0, 0x7f0c033d

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfileMe:Landroid/widget/ImageView;

    .line 489
    const v0, 0x7f0c033e

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfile:Landroid/widget/ImageView;

    .line 490
    const v0, 0x7f0c033f

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->tvFriendName:Landroid/widget/TextView;

    .line 491
    const v0, 0x7f0c0340

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutInvite:Landroid/widget/RelativeLayout;

    .line 492
    const v0, 0x7f0c0341

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imgInvite:Landroid/widget/ImageView;

    .line 493
    const v0, 0x7f0c0342

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->tvInvite:Landroid/widget/TextView;

    .line 496
    :try_start_ab
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->tvCaption:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 497
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->tvFriendName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 498
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->tvInvite:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_c0} :catch_26d

    .line 503
    :goto_c0
    invoke-virtual {v9, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 508
    :goto_c3
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 509
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imageGift:Landroid/widget/ImageView;

    const v2, 0x7f0202bc

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 514
    :goto_d7
    iget v0, v6, Lcom/samsung/privilege/bean/Friend;->layout_type:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12d

    .line 515
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutCaption:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 516
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutFriend:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 518
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->tvCaption:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    const v3, 0x7f090328

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imageGalaxyGift:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 520
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imageGift:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    :goto_fe
    new-instance v8, Lcom/samsung/privilege/bean/TagInvite;

    invoke-direct {v8}, Lcom/samsung/privilege/bean/TagInvite;-><init>()V

    .line 580
    .local v8, "tagInvite":Lcom/samsung/privilege/bean/TagInvite;
    iput-object v6, v8, Lcom/samsung/privilege/bean/TagInvite;->friend:Lcom/samsung/privilege/bean/Friend;

    .line 581
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutInvite:Landroid/widget/RelativeLayout;

    iput-object v0, v8, Lcom/samsung/privilege/bean/TagInvite;->layoutInvite:Landroid/widget/RelativeLayout;

    .line 582
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutInvite:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 584
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutInvite:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_11c

    .line 585
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutInvite:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$1;-><init>(Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    :cond_11c
    return-object v9

    .line 505
    .end local v8    # "tagInvite":Lcom/samsung/privilege/bean/TagInvite;
    :cond_11d
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "holder":Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;
    check-cast v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;

    .restart local v7    # "holder":Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;
    goto :goto_c3

    .line 511
    :cond_124
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imageGift:Landroid/widget/ImageView;

    const v2, 0x7f0202bb

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d7

    .line 521
    :cond_12d
    iget v0, v6, Lcom/samsung/privilege/bean/Friend;->layout_type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_155

    .line 522
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutCaption:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 523
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutFriend:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 525
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->tvCaption:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    const v3, 0x7f090329

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imageGalaxyGift:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 527
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imageGift:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_fe

    .line 528
    :cond_155
    iget v0, v6, Lcom/samsung/privilege/bean/Friend;->layout_type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1ab

    .line 529
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutCaption:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 530
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutFriend:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 531
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfileMe:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 532
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfile:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 534
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfile:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 536
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->tvFriendName:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/samsung/privilege/bean/Friend;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
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

    .line 538
    .local v1, "imageUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsFragment;->access$9(Lcom/samsung/privilege/activity/FriendsFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    iget-object v2, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfileMe:Landroid/widget/ImageView;

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 540
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutInvite:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 541
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutFriendShadow:Landroid/widget/RelativeLayout;

    const v2, 0x7f02008d

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_fe

    .line 542
    .end local v1    # "imageUrl":Ljava/lang/String;
    :cond_1ab
    iget v0, v6, Lcom/samsung/privilege/bean/Friend;->layout_type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_201

    .line 543
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutCaption:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 544
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutFriend:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 545
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfileMe:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 546
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfile:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 548
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfileMe:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->tvFriendName:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/samsung/privilege/bean/Friend;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
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

    .line 552
    .restart local v1    # "imageUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsFragment;->access$9(Lcom/samsung/privilege/activity/FriendsFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    iget-object v2, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfile:Landroid/widget/ImageView;

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 554
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutInvite:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 555
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutFriendShadow:Landroid/widget/RelativeLayout;

    const v2, 0x7f02008b

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_fe

    .line 556
    .end local v1    # "imageUrl":Ljava/lang/String;
    :cond_201
    iget v0, v6, Lcom/samsung/privilege/bean/Friend;->layout_type:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_261

    .line 557
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutCaption:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 558
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutFriend:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 559
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfileMe:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 560
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfile:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 562
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfileMe:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 564
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->tvFriendName:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/samsung/privilege/bean/Friend;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
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

    .line 566
    .restart local v1    # "imageUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lcom/samsung/privilege/activity/FriendsFragment;->access$9(Lcom/samsung/privilege/activity/FriendsFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    iget-object v2, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->imageProfile:Landroid/widget/ImageView;

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 568
    iget-boolean v0, v6, Lcom/samsung/privilege/bean/Friend;->isInvited:Z

    if-nez v0, :cond_25b

    .line 569
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutInvite:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 573
    :goto_251
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutFriendShadow:Landroid/widget/RelativeLayout;

    const v2, 0x7f02008c

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_fe

    .line 571
    :cond_25b
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutInvite:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_251

    .line 575
    .end local v1    # "imageUrl":Ljava/lang/String;
    :cond_261
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutCaption:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 576
    iget-object v0, v7, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->layoutFriend:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_fe

    .line 499
    :catch_26d
    move-exception v0

    goto/16 :goto_c0
.end method
