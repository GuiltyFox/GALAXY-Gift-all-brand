.class Landroid/support/v4/app/LoaderManagerImpl;
.super Landroid/support/v4/app/LoaderManager;
.source "LoaderManager.java"


# static fields
.field static a:Z


# instance fields
.field final b:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/String;

.field e:Z

.field f:Z

.field private g:Landroid/support/v4/app/FragmentHostCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 192
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/support/v4/app/FragmentHostCallback;Z)V
    .registers 5

    .prologue
    .line 529
    invoke-direct {p0}, Landroid/support/v4/app/LoaderManager;-><init>()V

    .line 197
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/util/SparseArrayCompat;

    .line 203
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->c:Landroid/support/v4/util/SparseArrayCompat;

    .line 530
    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl;->d:Ljava/lang/String;

    .line 531
    iput-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl;->g:Landroid/support/v4/app/FragmentHostCallback;

    .line 532
    iput-boolean p3, p0, Landroid/support/v4/app/LoaderManagerImpl;->e:Z

    .line 533
    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->g:Landroid/support/v4/app/FragmentHostCallback;

    return-object v0
.end method


# virtual methods
.method a(Landroid/support/v4/app/FragmentHostCallback;)V
    .registers 2

    .prologue
    .line 536
    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl;->g:Landroid/support/v4/app/FragmentHostCallback;

    .line 537
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 860
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v0

    if-lez v0, :cond_5d

    .line 861
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Active Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 863
    :goto_27
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v0

    if-ge v1, v0, :cond_5d

    .line 864
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 865
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, v1}, Landroid/support/v4/util/SparseArrayCompat;->e(I)I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 866
    const-string/jumbo v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 863
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_27

    .line 870
    :cond_5d
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->c:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v0

    if-lez v0, :cond_b7

    .line 871
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Inactive Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 873
    :goto_82
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->c:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v0

    if-ge v2, v0, :cond_b7

    .line 874
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->c:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SparseArrayCompat;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 875
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->c:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/SparseArrayCompat;->e(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 876
    const-string/jumbo v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 877
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 873
    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    .line 880
    :cond_b7
    return-void
.end method

.method public a()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 884
    .line 885
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v4

    move v2, v1

    move v3, v1

    .line 886
    :goto_9
    if-ge v2, v4, :cond_23

    .line 887
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SparseArrayCompat;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 888
    iget-boolean v5, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->h:Z

    if-eqz v5, :cond_21

    iget-boolean v0, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->f:Z

    if-nez v0, :cond_21

    const/4 v0, 0x1

    :goto_1c
    or-int/2addr v3, v0

    .line 886
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :cond_21
    move v0, v1

    .line 888
    goto :goto_1c

    .line 890
    :cond_23
    return v3
.end method

.method b()V
    .registers 5

    .prologue
    .line 760
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Starting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_1e
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->e:Z

    if-eqz v0, :cond_48

    .line 762
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 764
    const-string/jumbo v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called doStart when already started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 775
    :cond_47
    return-void

    .line 768
    :cond_48
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->e:Z

    .line 772
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_54
    if-ltz v1, :cond_47

    .line 773
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->a()V

    .line 772
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_54
.end method

.method c()V
    .registers 5

    .prologue
    .line 778
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stopping in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_1e
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->e:Z

    if-nez v0, :cond_48

    .line 780
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 782
    const-string/jumbo v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called doStop when not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 790
    :goto_47
    return-void

    .line 786
    :cond_48
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_51
    if-ltz v1, :cond_62

    .line 787
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->e()V

    .line 786
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_51

    .line 789
    :cond_62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->e:Z

    goto :goto_47
.end method

.method d()V
    .registers 5

    .prologue
    .line 793
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Retaining in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_1e
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->e:Z

    if-nez v0, :cond_48

    .line 795
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 797
    const-string/jumbo v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called doRetain when not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 806
    :cond_47
    return-void

    .line 801
    :cond_48
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->f:Z

    .line 802
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->e:Z

    .line 803
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_57
    if-ltz v1, :cond_47

    .line 804
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->b()V

    .line 803
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_57
.end method

.method e()V
    .registers 4

    .prologue
    .line 809
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->f:Z

    if-eqz v0, :cond_3f

    .line 810
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

    if-eqz v0, :cond_22

    const-string/jumbo v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Finished Retaining in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->f:Z

    .line 813
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2e
    if-ltz v1, :cond_3f

    .line 814
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c()V

    .line 813
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2e

    .line 817
    :cond_3f
    return-void
.end method

.method f()V
    .registers 4

    .prologue
    .line 820
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    .line 821
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->k:Z

    .line 820
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 823
    :cond_1a
    return-void
.end method

.method g()V
    .registers 3

    .prologue
    .line 826
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    .line 827
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d()V

    .line 826
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 829
    :cond_1a
    return-void
.end method

.method h()V
    .registers 4

    .prologue
    .line 832
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->f:Z

    if-nez v0, :cond_41

    .line 833
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

    if-eqz v0, :cond_22

    const-string/jumbo v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Destroying Active in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_22
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2b
    if-ltz v1, :cond_3c

    .line 835
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->f()V

    .line 834
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2b

    .line 837
    :cond_3c
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->c()V

    .line 840
    :cond_41
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

    if-eqz v0, :cond_5f

    const-string/jumbo v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Destroying Inactive in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_5f
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->c:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_68
    if-ltz v1, :cond_79

    .line 842
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->c:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->f()V

    .line 841
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_68

    .line 844
    :cond_79
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->c:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->c()V

    .line 845
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 850
    const-string/jumbo v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->g:Landroid/support/v4/app/FragmentHostCallback;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 854
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
