.class public Landroid/support/v4/app/FragmentManagerNonConfig;
.super Ljava/lang/Object;
.source "FragmentManagerNonConfig.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/FragmentManagerNonConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/FragmentManagerNonConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerNonConfig;->a:Ljava/util/List;

    .line 40
    iput-object p2, p0, Landroid/support/v4/app/FragmentManagerNonConfig;->b:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerNonConfig;->a:Ljava/util/List;

    return-object v0
.end method

.method b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/FragmentManagerNonConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerNonConfig;->b:Ljava/util/List;

    return-object v0
.end method
