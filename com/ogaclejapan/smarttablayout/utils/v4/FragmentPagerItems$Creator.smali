.class public Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;
.super Ljava/lang/Object;
.source "FragmentPagerItems.java"


# instance fields
.field private final a:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    invoke-direct {v0, p1}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;->a:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;->a:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;->add(Ljava/lang/Object;)Z

    .line 70
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p1, p2}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;->a(Ljava/lang/CharSequence;Ljava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;->a(Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;->a:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    return-object v0
.end method
