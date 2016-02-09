.class Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;
.super Ljava/lang/Object;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderInAppRow"
.end annotation


# instance fields
.field public imageGalaxyGift:Landroid/widget/ImageView;

.field public imageGift:Landroid/widget/ImageView;

.field public imageProfile:Landroid/widget/ImageView;

.field public imageProfileMe:Landroid/widget/ImageView;

.field public imgInvite:Landroid/widget/ImageView;

.field public layoutCaption:Landroid/widget/RelativeLayout;

.field public layoutFriend:Landroid/widget/RelativeLayout;

.field public layoutFriendShadow:Landroid/widget/RelativeLayout;

.field public layoutInvite:Landroid/widget/RelativeLayout;

.field final synthetic this$1:Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;

.field public tvCaption:Landroid/widget/TextView;

.field public tvFriendName:Landroid/widget/TextView;

.field public tvInvite:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;)V
    .registers 2

    .prologue
    .line 455
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter$ViewHolderInAppRow;->this$1:Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
