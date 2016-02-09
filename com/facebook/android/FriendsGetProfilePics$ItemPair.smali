.class Lcom/facebook/android/FriendsGetProfilePics$ItemPair;
.super Ljava/lang/Object;
.source "FriendsGetProfilePics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/android/FriendsGetProfilePics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemPair"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/android/FriendsGetProfilePics;

.field uid:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/android/FriendsGetProfilePics;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/facebook/android/FriendsGetProfilePics$ItemPair;->this$0:Lcom/facebook/android/FriendsGetProfilePics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, Lcom/facebook/android/FriendsGetProfilePics$ItemPair;->uid:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/facebook/android/FriendsGetProfilePics$ItemPair;->url:Ljava/lang/String;

    .line 107
    return-void
.end method
