.class public Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;
.super Lcom/ogaclejapan/smarttablayout/utils/PagerItem;
.source "FragmentPagerItem.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>(Ljava/lang/CharSequence;FLjava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/ogaclejapan/smarttablayout/utils/PagerItem;-><init>(Ljava/lang/CharSequence;F)V

    .line 34
    iput-object p3, p0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;->a:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;->b:Landroid/os/Bundle;

    .line 36
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;FLjava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "F",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;->a(Ljava/lang/CharSequence;FLjava/lang/Class;Landroid/os/Bundle;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;FLjava/lang/Class;Landroid/os/Bundle;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "F",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;-><init>(Ljava/lang/CharSequence;FLjava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;"
        }
    .end annotation

    .prologue
    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0, p1}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;->a(Ljava/lang/CharSequence;FLjava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/os/Bundle;I)V
    .registers 3

    .prologue
    .line 66
    const-string/jumbo v0, "FragmentPagerItem:Position"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;I)Landroid/support/v4/app/Fragment;
    .registers 5

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;->b:Landroid/os/Bundle;

    invoke-static {v0, p2}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;->a(Landroid/os/Bundle;I)V

    .line 71
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;->b:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method
