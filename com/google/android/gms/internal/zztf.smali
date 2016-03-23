.class public Lcom/google/android/gms/internal/zztf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/zzte",
        "<TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final tag:I

.field protected final type:I

.field protected final zzbpR:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final zzbpS:Z


# direct methods
.method private constructor <init>(ILjava/lang/Class;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<TT;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zztf;->type:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zztf;->zzbpR:Ljava/lang/Class;

    iput p3, p0, Lcom/google/android/gms/internal/zztf;->tag:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zztf;->zzbpS:Z

    return-void
.end method

.method private zzH(Ljava/util/List;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zztm;",
            ">;)TT;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zztm;

    iget-object v4, v0, Lcom/google/android/gms/internal/zztm;->zzbqc:[B

    array-length v4, v4

    if-eqz v4, :cond_1b

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/internal/zztf;->zza(Lcom/google/android/gms/internal/zztm;Ljava/util/List;)V

    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_1f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_27

    const/4 v0, 0x0

    :cond_26
    return-object v0

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/internal/zztf;->zzbpR:Ljava/lang/Class;

    iget-object v4, p0, Lcom/google/android/gms/internal/zztf;->zzbpR:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_37
    if-ge v2, v1, :cond_26

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v2, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_37
.end method

.method private zzI(Ljava/util/List;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zztm;",
            ">;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zztm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zztf;->zzbpR:Ljava/lang/Class;

    iget-object v0, v0, Lcom/google/android/gms/internal/zztm;->zzbqc:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/zztc;->zzC([B)Lcom/google/android/gms/internal/zztc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztf;->zzE(Lcom/google/android/gms/internal/zztc;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public static zza(ILjava/lang/Class;J)Lcom/google/android/gms/internal/zztf;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/google/android/gms/internal/zzte",
            "<TM;>;T:",
            "Lcom/google/android/gms/internal/zztk;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;J)",
            "Lcom/google/android/gms/internal/zztf",
            "<TM;TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zztf;

    long-to-int v1, p2

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/internal/zztf;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method


# virtual methods
.method protected zzE(Lcom/google/android/gms/internal/zztc;)Ljava/lang/Object;
    .registers 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zztf;->zzbpS:Z

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/android/gms/internal/zztf;->zzbpR:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    :goto_b
    :try_start_b
    iget v0, p0, Lcom/google/android/gms/internal/zztf;->type:I

    packed-switch v0, :pswitch_data_8a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/zztf;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2c
    .catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_2c} :catch_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_2c} :catch_65
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_2c} :catch_80

    :catch_2c
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error creating instance of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_47
    iget-object v0, p0, Lcom/google/android/gms/internal/zztf;->zzbpR:Ljava/lang/Class;

    move-object v1, v0

    goto :goto_b

    :pswitch_4b
    :try_start_4b
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zztk;

    iget v2, p0, Lcom/google/android/gms/internal/zztf;->tag:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zztn;->zzmG(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztk;I)V

    :goto_5a
    return-object v0

    :pswitch_5b
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zztk;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztk;)V
    :try_end_64
    .catch Ljava/lang/InstantiationException; {:try_start_4b .. :try_end_64} :catch_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_4b .. :try_end_64} :catch_65
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_64} :catch_80

    goto :goto_5a

    :catch_65
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error creating instance of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_80
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Error reading extension field"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_8a
    .packed-switch 0xa
        :pswitch_4b
        :pswitch_5b
    .end packed-switch
.end method

.method final zzG(Ljava/util/List;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zztm;",
            ">;)TT;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zztf;->zzbpS:Z

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zztf;->zzH(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_d
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zztf;->zzI(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method zzY(Ljava/lang/Object;)I
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zztf;->zzbpS:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zztf;->zzZ(Ljava/lang/Object;)I

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zztf;->zzaa(Ljava/lang/Object;)I

    move-result v0

    goto :goto_8
.end method

.method protected zzZ(Ljava/lang/Object;)I
    .registers 6

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_1a

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zztf;->zzaa(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    return v0
.end method

.method protected zza(Lcom/google/android/gms/internal/zztm;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zztm;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zztm;->zzbqc:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/zztc;->zzC([B)Lcom/google/android/gms/internal/zztc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztf;->zzE(Lcom/google/android/gms/internal/zztc;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zztd;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zztf;->zzbpS:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zztf;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/zztd;)V

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zztf;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zztd;)V

    goto :goto_7
.end method

.method protected zzaa(Ljava/lang/Object;)I
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/zztf;->tag:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zztn;->zzmG(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zztf;->type:I

    packed-switch v1, :pswitch_data_36

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/zztf;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_27
    check-cast p1, Lcom/google/android/gms/internal/zztk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zztd;->zzb(ILcom/google/android/gms/internal/zztk;)I

    move-result v0

    :goto_2d
    return v0

    :pswitch_2e
    check-cast p1, Lcom/google/android/gms/internal/zztk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zztd;->zzc(ILcom/google/android/gms/internal/zztk;)I

    move-result v0

    goto :goto_2d

    nop

    :pswitch_data_36
    .packed-switch 0xa
        :pswitch_27
        :pswitch_2e
    .end packed-switch
.end method

.method protected zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zztd;)V
    .registers 6

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zztf;->tag:I

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zztd;->zzmy(I)V

    iget v0, p0, Lcom/google/android/gms/internal/zztf;->type:I

    packed-switch v0, :pswitch_data_44

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/zztf;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_26

    :catch_26
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_2d
    :try_start_2d
    check-cast p1, Lcom/google/android/gms/internal/zztk;

    iget v0, p0, Lcom/google/android/gms/internal/zztf;->tag:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zztn;->zzmG(I)I

    move-result v0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zztd;->zzb(Lcom/google/android/gms/internal/zztk;)V

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzK(II)V

    :goto_3c
    return-void

    :pswitch_3d
    check-cast p1, Lcom/google/android/gms/internal/zztk;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zztd;->zzc(Lcom/google/android/gms/internal/zztk;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_42} :catch_26

    goto :goto_3c

    nop

    :pswitch_data_44
    .packed-switch 0xa
        :pswitch_2d
        :pswitch_3d
    .end packed-switch
.end method

.method protected zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/zztd;)V
    .registers 6

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_13

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/internal/zztf;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zztd;)V

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_13
    return-void
.end method
