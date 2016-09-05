.class public abstract Lcom/ogaclejapan/smarttablayout/utils/PagerItems;
.super Ljava/util/ArrayList;
.source "PagerItems.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ogaclejapan/smarttablayout/utils/PagerItem;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/utils/PagerItems;->a:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/PagerItems;->a:Landroid/content/Context;

    return-object v0
.end method
