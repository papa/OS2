
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	bc813103          	ld	sp,-1080(sp) # 8000bbc8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	6a8060ef          	jal	ra,800066c4 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    sd x0, 0(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	249030ef          	jal	ra,80004ad0 <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    8000108c:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001090:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001094:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001098:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001108:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001218:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000121c:	00b29a63          	bne	t0,a1,80001230 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001220:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001224:	fe029ae3          	bnez	t0,80001218 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001228:	00000513          	li	a0,0
    jr ra                  # Return.
    8000122c:	00008067          	ret

0000000080001230 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001230:	00100513          	li	a0,1
    80001234:	00008067          	ret

0000000080001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001238:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000123c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001240:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001244:	0085b083          	ld	ra,8(a1)

    ret
    80001248:	00008067          	ret

000000008000124c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000124c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001250:	00853083          	ld	ra,8(a0)

    80001254:	00008067          	ret

0000000080001258 <_Z6strcpyPKcPc>:
//singleton slab allocator
static slab_allocator_t* slabAllocator = nullptr;

//helping functions
void strcpy(const char* src, char* dst)
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    while(*src != '\0')
    80001264:	00054783          	lbu	a5,0(a0)
    80001268:	00078a63          	beqz	a5,8000127c <_Z6strcpyPKcPc+0x24>
    {
        *dst = *src;
    8000126c:	00f58023          	sb	a5,0(a1)
        src++; dst++;
    80001270:	00150513          	addi	a0,a0,1
    80001274:	00158593          	addi	a1,a1,1
    while(*src != '\0')
    80001278:	fedff06f          	j	80001264 <_Z6strcpyPKcPc+0xc>
    }
    *dst = *src;
    8000127c:	00f58023          	sb	a5,0(a1)
}
    80001280:	00813403          	ld	s0,8(sp)
    80001284:	01010113          	addi	sp,sp,16
    80001288:	00008067          	ret

000000008000128c <_Z17destroy_slab_listPP6slab_s>:

int destroy_slab_list(slab_t** slab)
{
    8000128c:	fd010113          	addi	sp,sp,-48
    80001290:	02113423          	sd	ra,40(sp)
    80001294:	02813023          	sd	s0,32(sp)
    80001298:	00913c23          	sd	s1,24(sp)
    8000129c:	01213823          	sd	s2,16(sp)
    800012a0:	01313423          	sd	s3,8(sp)
    800012a4:	01413023          	sd	s4,0(sp)
    800012a8:	03010413          	addi	s0,sp,48
    if(*slab == nullptr) return 0;
    800012ac:	00053783          	ld	a5,0(a0)
    800012b0:	04078263          	beqz	a5,800012f4 <_Z17destroy_slab_listPP6slab_s+0x68>
    800012b4:	00050493          	mv	s1,a0
    size_t sz = (*slab)->owner->slab_size;
    800012b8:	0107b783          	ld	a5,16(a5)
    800012bc:	0587b983          	ld	s3,88(a5)
    int totalBlocks = 0;
    800012c0:	00000913          	li	s2,0
    while(*slab != nullptr)
    800012c4:	0004b583          	ld	a1,0(s1)
    800012c8:	02058863          	beqz	a1,800012f8 <_Z17destroy_slab_listPP6slab_s+0x6c>
    {
        slab_t* nextSlab = (*slab)->next;
    800012cc:	0085ba03          	ld	s4,8(a1)
        buddy_free(slabAllocator->buddy, *slab, sz);
    800012d0:	00098613          	mv	a2,s3
    800012d4:	0000b797          	auipc	a5,0xb
    800012d8:	98c7b783          	ld	a5,-1652(a5) # 8000bc60 <_ZL13slabAllocator>
    800012dc:	0007b503          	ld	a0,0(a5)
    800012e0:	00002097          	auipc	ra,0x2
    800012e4:	e60080e7          	jalr	-416(ra) # 80003140 <_Z10buddy_freeP14buddyAllocatorPvm>
        *slab = nextSlab;
    800012e8:	0144b023          	sd	s4,0(s1)
        totalBlocks+=sz;
    800012ec:	0129893b          	addw	s2,s3,s2
    while(*slab != nullptr)
    800012f0:	fd5ff06f          	j	800012c4 <_Z17destroy_slab_listPP6slab_s+0x38>
    if(*slab == nullptr) return 0;
    800012f4:	00000913          	li	s2,0
    }
    return totalBlocks;
}
    800012f8:	00090513          	mv	a0,s2
    800012fc:	02813083          	ld	ra,40(sp)
    80001300:	02013403          	ld	s0,32(sp)
    80001304:	01813483          	ld	s1,24(sp)
    80001308:	01013903          	ld	s2,16(sp)
    8000130c:	00813983          	ld	s3,8(sp)
    80001310:	00013a03          	ld	s4,0(sp)
    80001314:	03010113          	addi	sp,sp,48
    80001318:	00008067          	ret

000000008000131c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>:

void init_cache(kmem_cache_t* cachep, const char* cache_name, size_t slab_size, size_t obj_size, void (*ctor)(void*),void (*dtor)(void*))
{
    8000131c:	fc010113          	addi	sp,sp,-64
    80001320:	02113c23          	sd	ra,56(sp)
    80001324:	02813823          	sd	s0,48(sp)
    80001328:	02913423          	sd	s1,40(sp)
    8000132c:	03213023          	sd	s2,32(sp)
    80001330:	01313c23          	sd	s3,24(sp)
    80001334:	01413823          	sd	s4,16(sp)
    80001338:	01513423          	sd	s5,8(sp)
    8000133c:	04010413          	addi	s0,sp,64
    80001340:	00050493          	mv	s1,a0
    80001344:	00058513          	mv	a0,a1
    80001348:	00060a93          	mv	s5,a2
    8000134c:	00068a13          	mv	s4,a3
    80001350:	00070993          	mv	s3,a4
    80001354:	00078913          	mv	s2,a5
    strcpy(cache_name, cachep->cacheName);
    80001358:	00048593          	mv	a1,s1
    8000135c:	00000097          	auipc	ra,0x0
    80001360:	efc080e7          	jalr	-260(ra) # 80001258 <_Z6strcpyPKcPc>
    cachep->slab_size = slab_size;
    80001364:	0554bc23          	sd	s5,88(s1)
    cachep->obj_size = obj_size;
    80001368:	0744b023          	sd	s4,96(s1)
    cachep->ctor = ctor;
    8000136c:	0734b423          	sd	s3,104(s1)
    cachep->dtor = dtor;
    80001370:	0724b823          	sd	s2,112(s1)

    cachep->slabs_empty = cachep->slabs_partial = cachep->slabs_full = nullptr;
    80001374:	0404b423          	sd	zero,72(s1)
    80001378:	0404b823          	sd	zero,80(s1)
    8000137c:	0404b023          	sd	zero,64(s1)
    cachep->errors = NO_ERROR;
    80001380:	0604ac23          	sw	zero,120(s1)
}
    80001384:	03813083          	ld	ra,56(sp)
    80001388:	03013403          	ld	s0,48(sp)
    8000138c:	02813483          	ld	s1,40(sp)
    80001390:	02013903          	ld	s2,32(sp)
    80001394:	01813983          	ld	s3,24(sp)
    80001398:	01013a03          	ld	s4,16(sp)
    8000139c:	00813a83          	ld	s5,8(sp)
    800013a0:	04010113          	addi	sp,sp,64
    800013a4:	00008067          	ret

00000000800013a8 <_Z19slab_allocator_initP14buddyAllocator>:

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    800013a8:	fe010113          	addi	sp,sp,-32
    800013ac:	00113c23          	sd	ra,24(sp)
    800013b0:	00813823          	sd	s0,16(sp)
    800013b4:	00913423          	sd	s1,8(sp)
    800013b8:	02010413          	addi	s0,sp,32
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);
    800013bc:	0e050493          	addi	s1,a0,224

    slabAllocatorLocal->buddy = buddy;
    800013c0:	0ea53023          	sd	a0,224(a0)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800013c4:	00000793          	li	a5,0
    800013c8:	0140006f          	j	800013dc <_Z19slab_allocator_initP14buddyAllocator+0x34>
        slabAllocatorLocal->cachesBuffers[i] = nullptr;
    800013cc:	00379713          	slli	a4,a5,0x3
    800013d0:	00e50733          	add	a4,a0,a4
    800013d4:	0e073423          	sd	zero,232(a4)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800013d8:	00178793          	addi	a5,a5,1
    800013dc:	00c00713          	li	a4,12
    800013e0:	fef776e3          	bgeu	a4,a5,800013cc <_Z19slab_allocator_initP14buddyAllocator+0x24>

    init_cache(&slabAllocatorLocal->cacheOfCaches, "Cache of caches", CACHE_OF_CACHES_SLAB_SIZE, sizeof(kmem_cache_t), nullptr,nullptr);
    800013e4:	00000793          	li	a5,0
    800013e8:	00000713          	li	a4,0
    800013ec:	08000693          	li	a3,128
    800013f0:	00200613          	li	a2,2
    800013f4:	00008597          	auipc	a1,0x8
    800013f8:	c2c58593          	addi	a1,a1,-980 # 80009020 <CONSOLE_STATUS+0x10>
    800013fc:	15050513          	addi	a0,a0,336
    80001400:	00000097          	auipc	ra,0x0
    80001404:	f1c080e7          	jalr	-228(ra) # 8000131c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>

    return slabAllocatorLocal;
}
    80001408:	00048513          	mv	a0,s1
    8000140c:	01813083          	ld	ra,24(sp)
    80001410:	01013403          	ld	s0,16(sp)
    80001414:	00813483          	ld	s1,8(sp)
    80001418:	02010113          	addi	sp,sp,32
    8000141c:	00008067          	ret

0000000080001420 <_Z13checkSetIndexP6slab_si>:

bool checkSetIndex(slab_t* slab, int index)
{
    80001420:	ff010113          	addi	sp,sp,-16
    80001424:	00813423          	sd	s0,8(sp)
    80001428:	01010413          	addi	s0,sp,16
    return (uint8)slab->allocated[index / 8] & (1 << (index%8));
    8000142c:	41f5d79b          	sraiw	a5,a1,0x1f
    80001430:	01d7d79b          	srliw	a5,a5,0x1d
    80001434:	00b785bb          	addw	a1,a5,a1
    80001438:	4035d71b          	sraiw	a4,a1,0x3
    8000143c:	00e50533          	add	a0,a0,a4
    80001440:	02854503          	lbu	a0,40(a0)
    80001444:	0075f593          	andi	a1,a1,7
    80001448:	40f585bb          	subw	a1,a1,a5
    8000144c:	40b5553b          	sraw	a0,a0,a1
}
    80001450:	00157513          	andi	a0,a0,1
    80001454:	00813403          	ld	s0,8(sp)
    80001458:	01010113          	addi	sp,sp,16
    8000145c:	00008067          	ret

0000000080001460 <_Z17setAllocatedIndexP6slab_si>:

void setAllocatedIndex(slab_t* slab, int index)
{
    80001460:	ff010113          	addi	sp,sp,-16
    80001464:	00813423          	sd	s0,8(sp)
    80001468:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
    8000146c:	41f5d79b          	sraiw	a5,a1,0x1f
    80001470:	01d7d79b          	srliw	a5,a5,0x1d
    80001474:	00b785bb          	addw	a1,a5,a1
    80001478:	4035d71b          	sraiw	a4,a1,0x3
    8000147c:	00e50533          	add	a0,a0,a4
    80001480:	02850703          	lb	a4,40(a0)
    80001484:	0075f593          	andi	a1,a1,7
    80001488:	40f585bb          	subw	a1,a1,a5
    8000148c:	00100793          	li	a5,1
    80001490:	00b795bb          	sllw	a1,a5,a1
    80001494:	00b765b3          	or	a1,a4,a1
    80001498:	02b50423          	sb	a1,40(a0)
}
    8000149c:	00813403          	ld	s0,8(sp)
    800014a0:	01010113          	addi	sp,sp,16
    800014a4:	00008067          	ret

00000000800014a8 <_Z14allocateObjectP6slab_s>:

void* allocateObject(slab_t* slab)
{
    800014a8:	fd010113          	addi	sp,sp,-48
    800014ac:	02113423          	sd	ra,40(sp)
    800014b0:	02813023          	sd	s0,32(sp)
    800014b4:	00913c23          	sd	s1,24(sp)
    800014b8:	01213823          	sd	s2,16(sp)
    800014bc:	01313423          	sd	s3,8(sp)
    800014c0:	03010413          	addi	s0,sp,48
    800014c4:	00050913          	mv	s2,a0
    if(slab == nullptr)
    800014c8:	08050863          	beqz	a0,80001558 <_Z14allocateObjectP6slab_s+0xb0>
        return nullptr;
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    800014cc:	00000493          	li	s1,0
    800014d0:	01893783          	ld	a5,24(s2)
    800014d4:	02f4fe63          	bgeu	s1,a5,80001510 <_Z14allocateObjectP6slab_s+0x68>
    {
        if(!checkSetIndex(slab, i))
    800014d8:	0004899b          	sext.w	s3,s1
    800014dc:	00098593          	mv	a1,s3
    800014e0:	00090513          	mv	a0,s2
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	f3c080e7          	jalr	-196(ra) # 80001420 <_Z13checkSetIndexP6slab_si>
    800014ec:	00050663          	beqz	a0,800014f8 <_Z14allocateObjectP6slab_s+0x50>
    for(size_t i = 0;i < slab->numOfObjects;i++)
    800014f0:	00148493          	addi	s1,s1,1
    800014f4:	fddff06f          	j	800014d0 <_Z14allocateObjectP6slab_s+0x28>
        {
            addr = (void*)((size_t)slab + sizeof(slab_t)+ i*slab->owner->obj_size);
    800014f8:	01093783          	ld	a5,16(s2)
    800014fc:	0607b783          	ld	a5,96(a5)
    80001500:	029784b3          	mul	s1,a5,s1
    80001504:	009904b3          	add	s1,s2,s1
    80001508:	42848493          	addi	s1,s1,1064
            index = i;
            break;
    8000150c:	00c0006f          	j	80001518 <_Z14allocateObjectP6slab_s+0x70>
    void* addr = nullptr;
    80001510:	00000493          	li	s1,0
    int index = -1;
    80001514:	fff00993          	li	s3,-1
        }
    }
    if(addr == nullptr)
    80001518:	02048063          	beqz	s1,80001538 <_Z14allocateObjectP6slab_s+0x90>
        return nullptr;

    setAllocatedIndex(slab, index);
    8000151c:	00098593          	mv	a1,s3
    80001520:	00090513          	mv	a0,s2
    80001524:	00000097          	auipc	ra,0x0
    80001528:	f3c080e7          	jalr	-196(ra) # 80001460 <_Z17setAllocatedIndexP6slab_si>
    slab->numOfAllocatedObjects++;
    8000152c:	02093783          	ld	a5,32(s2)
    80001530:	00178793          	addi	a5,a5,1
    80001534:	02f93023          	sd	a5,32(s2)

    return addr;
}
    80001538:	00048513          	mv	a0,s1
    8000153c:	02813083          	ld	ra,40(sp)
    80001540:	02013403          	ld	s0,32(sp)
    80001544:	01813483          	ld	s1,24(sp)
    80001548:	01013903          	ld	s2,16(sp)
    8000154c:	00813983          	ld	s3,8(sp)
    80001550:	03010113          	addi	sp,sp,48
    80001554:	00008067          	ret
        return nullptr;
    80001558:	00050493          	mv	s1,a0
    8000155c:	fddff06f          	j	80001538 <_Z14allocateObjectP6slab_s+0x90>

0000000080001560 <_Z4fullP6slab_s>:

bool full(slab_t* slab)
{
    80001560:	ff010113          	addi	sp,sp,-16
    80001564:	00813423          	sd	s0,8(sp)
    80001568:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == slab->numOfObjects;
    8000156c:	02053783          	ld	a5,32(a0)
    80001570:	01853503          	ld	a0,24(a0)
    80001574:	40f50533          	sub	a0,a0,a5
}
    80001578:	00153513          	seqz	a0,a0
    8000157c:	00813403          	ld	s0,8(sp)
    80001580:	01010113          	addi	sp,sp,16
    80001584:	00008067          	ret

0000000080001588 <_Z5emptyP6slab_s>:

bool empty(slab_t* slab)
{
    80001588:	ff010113          	addi	sp,sp,-16
    8000158c:	00813423          	sd	s0,8(sp)
    80001590:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == 0;
    80001594:	02053503          	ld	a0,32(a0)
}
    80001598:	00153513          	seqz	a0,a0
    8000159c:	00813403          	ld	s0,8(sp)
    800015a0:	01010113          	addi	sp,sp,16
    800015a4:	00008067          	ret

00000000800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>:

void insertIntoSlabList(slab_t* slab, slab_t** slab_head)
{
    800015a8:	ff010113          	addi	sp,sp,-16
    800015ac:	00813423          	sd	s0,8(sp)
    800015b0:	01010413          	addi	s0,sp,16
    if(slab == nullptr)
    800015b4:	00050e63          	beqz	a0,800015d0 <_Z18insertIntoSlabListP6slab_sPS0_+0x28>
        return;
    slab->prev = nullptr;
    800015b8:	00053023          	sd	zero,0(a0)
    slab->next = *slab_head;
    800015bc:	0005b783          	ld	a5,0(a1)
    800015c0:	00f53423          	sd	a5,8(a0)
    if(*slab_head != nullptr)
    800015c4:	00078463          	beqz	a5,800015cc <_Z18insertIntoSlabListP6slab_sPS0_+0x24>
        (*slab_head)->prev = slab;
    800015c8:	00a7b023          	sd	a0,0(a5)
    *slab_head = slab;
    800015cc:	00a5b023          	sd	a0,0(a1)
}
    800015d0:	00813403          	ld	s0,8(sp)
    800015d4:	01010113          	addi	sp,sp,16
    800015d8:	00008067          	ret

00000000800015dc <_Z18removeFromSlabListP6slab_sPS0_>:

void removeFromSlabList(slab_t* slab, slab_t** slab_head)
{
    800015dc:	ff010113          	addi	sp,sp,-16
    800015e0:	00813423          	sd	s0,8(sp)
    800015e4:	01010413          	addi	s0,sp,16
    if(slab->prev == nullptr) //same as slab == *slab_head
    800015e8:	00053783          	ld	a5,0(a0)
    800015ec:	02078663          	beqz	a5,80001618 <_Z18removeFromSlabListP6slab_sPS0_+0x3c>
        (*slab_head) = slab->next;
        slab->next = slab->prev = nullptr;
    }
    else
    {
        slab->prev->next = slab->next;
    800015f0:	00853703          	ld	a4,8(a0)
    800015f4:	00e7b423          	sd	a4,8(a5)
        if(slab->next) slab->next->prev = slab->prev;
    800015f8:	00070663          	beqz	a4,80001604 <_Z18removeFromSlabListP6slab_sPS0_+0x28>
    800015fc:	00053783          	ld	a5,0(a0)
    80001600:	00f73023          	sd	a5,0(a4)
        slab->next = slab->prev = nullptr;
    80001604:	00053023          	sd	zero,0(a0)
    80001608:	00053423          	sd	zero,8(a0)
    }
}
    8000160c:	00813403          	ld	s0,8(sp)
    80001610:	01010113          	addi	sp,sp,16
    80001614:	00008067          	ret
        if(slab->next) slab->next->prev = nullptr;
    80001618:	00853783          	ld	a5,8(a0)
    8000161c:	00078463          	beqz	a5,80001624 <_Z18removeFromSlabListP6slab_sPS0_+0x48>
    80001620:	0007b023          	sd	zero,0(a5)
        (*slab_head) = slab->next;
    80001624:	00853783          	ld	a5,8(a0)
    80001628:	00f5b023          	sd	a5,0(a1)
        slab->next = slab->prev = nullptr;
    8000162c:	00053023          	sd	zero,0(a0)
    80001630:	00053423          	sd	zero,8(a0)
    80001634:	fd9ff06f          	j	8000160c <_Z18removeFromSlabListP6slab_sPS0_+0x30>

0000000080001638 <_Z16putPartialToFullP12kmem_cache_s>:

void putPartialToFull(kmem_cache_t* cachep)
{
    80001638:	fe010113          	addi	sp,sp,-32
    8000163c:	00113c23          	sd	ra,24(sp)
    80001640:	00813823          	sd	s0,16(sp)
    80001644:	00913423          	sd	s1,8(sp)
    80001648:	01213023          	sd	s2,0(sp)
    8000164c:	02010413          	addi	s0,sp,32
    80001650:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_partial;
    80001654:	05053903          	ld	s2,80(a0)
    removeFromSlabList(slab, &cachep->slabs_partial);
    80001658:	05050593          	addi	a1,a0,80
    8000165c:	00090513          	mv	a0,s2
    80001660:	00000097          	auipc	ra,0x0
    80001664:	f7c080e7          	jalr	-132(ra) # 800015dc <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_full);
    80001668:	04848593          	addi	a1,s1,72
    8000166c:	00090513          	mv	a0,s2
    80001670:	00000097          	auipc	ra,0x0
    80001674:	f38080e7          	jalr	-200(ra) # 800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001678:	01813083          	ld	ra,24(sp)
    8000167c:	01013403          	ld	s0,16(sp)
    80001680:	00813483          	ld	s1,8(sp)
    80001684:	00013903          	ld	s2,0(sp)
    80001688:	02010113          	addi	sp,sp,32
    8000168c:	00008067          	ret

0000000080001690 <_Z17putEmptyToPartialP12kmem_cache_s>:

void putEmptyToPartial(kmem_cache_t* cachep)
{
    80001690:	fe010113          	addi	sp,sp,-32
    80001694:	00113c23          	sd	ra,24(sp)
    80001698:	00813823          	sd	s0,16(sp)
    8000169c:	00913423          	sd	s1,8(sp)
    800016a0:	01213023          	sd	s2,0(sp)
    800016a4:	02010413          	addi	s0,sp,32
    800016a8:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_empty;
    800016ac:	04053903          	ld	s2,64(a0)
    removeFromSlabList(slab, &cachep->slabs_empty);
    800016b0:	04050593          	addi	a1,a0,64
    800016b4:	00090513          	mv	a0,s2
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	f24080e7          	jalr	-220(ra) # 800015dc <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    800016c0:	05048593          	addi	a1,s1,80
    800016c4:	00090513          	mv	a0,s2
    800016c8:	00000097          	auipc	ra,0x0
    800016cc:	ee0080e7          	jalr	-288(ra) # 800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800016d0:	01813083          	ld	ra,24(sp)
    800016d4:	01013403          	ld	s0,16(sp)
    800016d8:	00813483          	ld	s1,8(sp)
    800016dc:	00013903          	ld	s2,0(sp)
    800016e0:	02010113          	addi	sp,sp,32
    800016e4:	00008067          	ret

00000000800016e8 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>:

void removeFullSlab(kmem_cache_t* cachep, slab_t* slab)
{
    800016e8:	fe010113          	addi	sp,sp,-32
    800016ec:	00113c23          	sd	ra,24(sp)
    800016f0:	00813823          	sd	s0,16(sp)
    800016f4:	00913423          	sd	s1,8(sp)
    800016f8:	01213023          	sd	s2,0(sp)
    800016fc:	02010413          	addi	s0,sp,32
    80001700:	00050913          	mv	s2,a0
    80001704:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_full);
    80001708:	04850593          	addi	a1,a0,72
    8000170c:	00048513          	mv	a0,s1
    80001710:	00000097          	auipc	ra,0x0
    80001714:	ecc080e7          	jalr	-308(ra) # 800015dc <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001718:	05090593          	addi	a1,s2,80
    8000171c:	00048513          	mv	a0,s1
    80001720:	00000097          	auipc	ra,0x0
    80001724:	e88080e7          	jalr	-376(ra) # 800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001728:	01813083          	ld	ra,24(sp)
    8000172c:	01013403          	ld	s0,16(sp)
    80001730:	00813483          	ld	s1,8(sp)
    80001734:	00013903          	ld	s2,0(sp)
    80001738:	02010113          	addi	sp,sp,32
    8000173c:	00008067          	ret

0000000080001740 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>:

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    80001740:	fe010113          	addi	sp,sp,-32
    80001744:	00113c23          	sd	ra,24(sp)
    80001748:	00813823          	sd	s0,16(sp)
    8000174c:	00913423          	sd	s1,8(sp)
    80001750:	01213023          	sd	s2,0(sp)
    80001754:	02010413          	addi	s0,sp,32
    80001758:	00050913          	mv	s2,a0
    8000175c:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_partial);
    80001760:	05050593          	addi	a1,a0,80
    80001764:	00048513          	mv	a0,s1
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	e74080e7          	jalr	-396(ra) # 800015dc <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_empty);
    80001770:	04090593          	addi	a1,s2,64
    80001774:	00048513          	mv	a0,s1
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	e30080e7          	jalr	-464(ra) # 800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001780:	01813083          	ld	ra,24(sp)
    80001784:	01013403          	ld	s0,16(sp)
    80001788:	00813483          	ld	s1,8(sp)
    8000178c:	00013903          	ld	s2,0(sp)
    80001790:	02010113          	addi	sp,sp,32
    80001794:	00008067          	ret

0000000080001798 <_Z12allocateSlabP12kmem_cache_s>:

void allocateSlab(kmem_cache_t* cachep)
{
    80001798:	fd010113          	addi	sp,sp,-48
    8000179c:	02113423          	sd	ra,40(sp)
    800017a0:	02813023          	sd	s0,32(sp)
    800017a4:	00913c23          	sd	s1,24(sp)
    800017a8:	01213823          	sd	s2,16(sp)
    800017ac:	01313423          	sd	s3,8(sp)
    800017b0:	03010413          	addi	s0,sp,48
    800017b4:	00050993          	mv	s3,a0
    slab_t* newSlab = (slab_t*)buddy_alloc(slabAllocator->buddy,cachep->slab_size);
    800017b8:	05853583          	ld	a1,88(a0)
    800017bc:	0000a797          	auipc	a5,0xa
    800017c0:	4a47b783          	ld	a5,1188(a5) # 8000bc60 <_ZL13slabAllocator>
    800017c4:	0007b503          	ld	a0,0(a5)
    800017c8:	00001097          	auipc	ra,0x1
    800017cc:	688080e7          	jalr	1672(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    if(newSlab == nullptr)
    800017d0:	08050c63          	beqz	a0,80001868 <_Z12allocateSlabP12kmem_cache_s+0xd0>
    800017d4:	00050493          	mv	s1,a0
        return;
    newSlab->next = cachep->slabs_empty;
    800017d8:	0409b783          	ld	a5,64(s3)
    800017dc:	00f53423          	sd	a5,8(a0)
    if(cachep->slabs_empty != nullptr)
    800017e0:	00078463          	beqz	a5,800017e8 <_Z12allocateSlabP12kmem_cache_s+0x50>
        cachep->slabs_empty->prev = newSlab;
    800017e4:	00a7b023          	sd	a0,0(a5)
    cachep->slabs_empty = newSlab;
    800017e8:	0499b023          	sd	s1,64(s3)
    newSlab->prev = nullptr;
    800017ec:	0004b023          	sd	zero,0(s1)

    newSlab->numOfAllocatedObjects = 0;
    800017f0:	0204b023          	sd	zero,32(s1)
    newSlab->owner = cachep;
    800017f4:	0134b823          	sd	s3,16(s1)
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    800017f8:	0589b683          	ld	a3,88(s3)
    800017fc:	00c69693          	slli	a3,a3,0xc
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    80001800:	bd868693          	addi	a3,a3,-1064
    80001804:	0609b783          	ld	a5,96(s3)
    80001808:	02f6d6b3          	divu	a3,a3,a5
    8000180c:	00d4bc23          	sd	a3,24(s1)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001810:	00000713          	li	a4,0
    80001814:	00768793          	addi	a5,a3,7
    80001818:	0037d793          	srli	a5,a5,0x3
    8000181c:	00f77a63          	bgeu	a4,a5,80001830 <_Z12allocateSlabP12kmem_cache_s+0x98>
        newSlab->allocated[i] = 0;
    80001820:	00e487b3          	add	a5,s1,a4
    80001824:	02078423          	sb	zero,40(a5)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001828:	00170713          	addi	a4,a4,1
    8000182c:	fe9ff06f          	j	80001814 <_Z12allocateSlabP12kmem_cache_s+0x7c>

    if(cachep->ctor != nullptr)
    80001830:	0689b783          	ld	a5,104(s3)
    80001834:	02078a63          	beqz	a5,80001868 <_Z12allocateSlabP12kmem_cache_s+0xd0>
    {
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    80001838:	00000913          	li	s2,0
    8000183c:	0184b783          	ld	a5,24(s1)
    80001840:	02f97463          	bgeu	s2,a5,80001868 <_Z12allocateSlabP12kmem_cache_s+0xd0>
            cachep->ctor((void*)((size_t)newSlab + sizeof(slab_t) + i*newSlab->owner->obj_size));
    80001844:	0689b783          	ld	a5,104(s3)
    80001848:	0104b703          	ld	a4,16(s1)
    8000184c:	06073503          	ld	a0,96(a4)
    80001850:	03250533          	mul	a0,a0,s2
    80001854:	00a48533          	add	a0,s1,a0
    80001858:	42850513          	addi	a0,a0,1064
    8000185c:	000780e7          	jalr	a5
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    80001860:	00190913          	addi	s2,s2,1
    80001864:	fd9ff06f          	j	8000183c <_Z12allocateSlabP12kmem_cache_s+0xa4>
    }
}
    80001868:	02813083          	ld	ra,40(sp)
    8000186c:	02013403          	ld	s0,32(sp)
    80001870:	01813483          	ld	s1,24(sp)
    80001874:	01013903          	ld	s2,16(sp)
    80001878:	00813983          	ld	s3,8(sp)
    8000187c:	03010113          	addi	sp,sp,48
    80001880:	00008067          	ret

0000000080001884 <_Z18getOptimalSlabSizem>:

size_t getOptimalSlabSize(size_t obj_size)
{
    80001884:	ff010113          	addi	sp,sp,-16
    80001888:	00813423          	sd	s0,8(sp)
    8000188c:	01010413          	addi	s0,sp,16
    size_t bestSize = BLOCK_SIZE;
    80001890:	000017b7          	lui	a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    80001894:	42850713          	addi	a4,a0,1064
    80001898:	00e7f663          	bgeu	a5,a4,800018a4 <_Z18getOptimalSlabSizem+0x20>
        bestSize<<=1;
    8000189c:	00179793          	slli	a5,a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800018a0:	ff5ff06f          	j	80001894 <_Z18getOptimalSlabSizem+0x10>
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;
    800018a4:	bd878593          	addi	a1,a5,-1064 # bd8 <_entry-0x7ffff428>
    800018a8:	02a5f5b3          	remu	a1,a1,a0

    //return bestSize / BLOCK_SIZE;

    static size_t lowerConst = 1;
    static size_t highConst = 4;
    for(size_t i = lowerConst;i<=highConst;i++)
    800018ac:	00100693          	li	a3,1
    800018b0:	0080006f          	j	800018b8 <_Z18getOptimalSlabSizem+0x34>
    800018b4:	00168693          	addi	a3,a3,1
    800018b8:	00400713          	li	a4,4
    800018bc:	02d76063          	bltu	a4,a3,800018dc <_Z18getOptimalSlabSizem+0x58>
    {
        size_t newSize = bestSize << i;
    800018c0:	00d79633          	sll	a2,a5,a3
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    800018c4:	bd860713          	addi	a4,a2,-1064
    800018c8:	02a77733          	remu	a4,a4,a0
        if(newWaste < optimalWaste)
    800018cc:	feb774e3          	bgeu	a4,a1,800018b4 <_Z18getOptimalSlabSizem+0x30>
        {
            optimalWaste = newWaste;
    800018d0:	00070593          	mv	a1,a4
            bestSize = newSize;
    800018d4:	00060793          	mv	a5,a2
    800018d8:	fddff06f          	j	800018b4 <_Z18getOptimalSlabSizem+0x30>
        }
    }

    return bestSize / BLOCK_SIZE;
}
    800018dc:	00c7d513          	srli	a0,a5,0xc
    800018e0:	00813403          	ld	s0,8(sp)
    800018e4:	01010113          	addi	sp,sp,16
    800018e8:	00008067          	ret

00000000800018ec <_Z8findSlabP12kmem_cache_sPKv>:

//finds the slab where objp is
slab_t* findSlab(kmem_cache_t* cachep, const void* objp)
{
    800018ec:	ff010113          	addi	sp,sp,-16
    800018f0:	00813423          	sd	s0,8(sp)
    800018f4:	01010413          	addi	s0,sp,16
    800018f8:	00050693          	mv	a3,a0
    if(cachep == nullptr || objp == nullptr)
    800018fc:	02050c63          	beqz	a0,80001934 <_Z8findSlabP12kmem_cache_sPKv+0x48>
    80001900:	06058a63          	beqz	a1,80001974 <_Z8findSlabP12kmem_cache_sPKv+0x88>
        return nullptr;
    slab_t* slab = cachep->slabs_full;
    80001904:	04853503          	ld	a0,72(a0)
    80001908:	0080006f          	j	80001910 <_Z8findSlabP12kmem_cache_sPKv+0x24>
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    8000190c:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    80001910:	02050863          	beqz	a0,80001940 <_Z8findSlabP12kmem_cache_sPKv+0x54>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001914:	01853783          	ld	a5,24(a0)
    80001918:	01053703          	ld	a4,16(a0)
    8000191c:	06073703          	ld	a4,96(a4)
    80001920:	02e787b3          	mul	a5,a5,a4
    80001924:	00a787b3          	add	a5,a5,a0
    80001928:	42878793          	addi	a5,a5,1064
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    8000192c:	feb570e3          	bgeu	a0,a1,8000190c <_Z8findSlabP12kmem_cache_sPKv+0x20>
    80001930:	fcf5fee3          	bgeu	a1,a5,8000190c <_Z8findSlabP12kmem_cache_sPKv+0x20>
            return slab;
        slab = slab->next;
    }

    return nullptr;
}
    80001934:	00813403          	ld	s0,8(sp)
    80001938:	01010113          	addi	sp,sp,16
    8000193c:	00008067          	ret
    slab = cachep->slabs_partial;
    80001940:	0506b503          	ld	a0,80(a3)
    80001944:	0080006f          	j	8000194c <_Z8findSlabP12kmem_cache_sPKv+0x60>
        slab = slab->next;
    80001948:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    8000194c:	fe0504e3          	beqz	a0,80001934 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001950:	01853783          	ld	a5,24(a0)
    80001954:	01053703          	ld	a4,16(a0)
    80001958:	06073703          	ld	a4,96(a4)
    8000195c:	02e787b3          	mul	a5,a5,a4
    80001960:	00a787b3          	add	a5,a5,a0
    80001964:	42878793          	addi	a5,a5,1064
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    80001968:	feb570e3          	bgeu	a0,a1,80001948 <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    8000196c:	fcf5fee3          	bgeu	a1,a5,80001948 <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    80001970:	fc5ff06f          	j	80001934 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        return nullptr;
    80001974:	00058513          	mv	a0,a1
    80001978:	fbdff06f          	j	80001934 <_Z8findSlabP12kmem_cache_sPKv+0x48>

000000008000197c <_Z19resetAllocatedIndexP6slab_si>:

void resetAllocatedIndex(slab_t* slab, int index)
{
    8000197c:	ff010113          	addi	sp,sp,-16
    80001980:	00813423          	sd	s0,8(sp)
    80001984:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
    80001988:	41f5d79b          	sraiw	a5,a1,0x1f
    8000198c:	01d7d79b          	srliw	a5,a5,0x1d
    80001990:	00b785bb          	addw	a1,a5,a1
    80001994:	4035d71b          	sraiw	a4,a1,0x3
    80001998:	00e50533          	add	a0,a0,a4
    8000199c:	02850703          	lb	a4,40(a0)
    800019a0:	0075f593          	andi	a1,a1,7
    800019a4:	40f585bb          	subw	a1,a1,a5
    800019a8:	00100793          	li	a5,1
    800019ac:	00b795bb          	sllw	a1,a5,a1
    800019b0:	fff5c593          	not	a1,a1
    800019b4:	00b775b3          	and	a1,a4,a1
    800019b8:	02b50423          	sb	a1,40(a0)
}
    800019bc:	00813403          	ld	s0,8(sp)
    800019c0:	01010113          	addi	sp,sp,16
    800019c4:	00008067          	ret

00000000800019c8 <_Z13printSlabInfoP6slab_s>:

void printSlabInfo(slab_t* slab)
{
    800019c8:	fe010113          	addi	sp,sp,-32
    800019cc:	00113c23          	sd	ra,24(sp)
    800019d0:	00813823          	sd	s0,16(sp)
    800019d4:	00913423          	sd	s1,8(sp)
    800019d8:	02010413          	addi	s0,sp,32
    800019dc:	00050493          	mv	s1,a0
    KConsole::trapPrintString("One slab info---------\n");
    800019e0:	00007517          	auipc	a0,0x7
    800019e4:	65050513          	addi	a0,a0,1616 # 80009030 <CONSOLE_STATUS+0x20>
    800019e8:	00002097          	auipc	ra,0x2
    800019ec:	da0080e7          	jalr	-608(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab address ",(size_t)slab,16);
    800019f0:	01000613          	li	a2,16
    800019f4:	00048593          	mv	a1,s1
    800019f8:	00007517          	auipc	a0,0x7
    800019fc:	65050513          	addi	a0,a0,1616 # 80009048 <CONSOLE_STATUS+0x38>
    80001a00:	00002097          	auipc	ra,0x2
    80001a04:	e60080e7          	jalr	-416(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of allocated objects ",slab->numOfAllocatedObjects);
    80001a08:	00a00613          	li	a2,10
    80001a0c:	0204b583          	ld	a1,32(s1)
    80001a10:	00007517          	auipc	a0,0x7
    80001a14:	64850513          	addi	a0,a0,1608 # 80009058 <CONSOLE_STATUS+0x48>
    80001a18:	00002097          	auipc	ra,0x2
    80001a1c:	e48080e7          	jalr	-440(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of objects ", slab->numOfObjects);
    80001a20:	00a00613          	li	a2,10
    80001a24:	0184b583          	ld	a1,24(s1)
    80001a28:	00007517          	auipc	a0,0x7
    80001a2c:	65050513          	addi	a0,a0,1616 # 80009078 <CONSOLE_STATUS+0x68>
    80001a30:	00002097          	auipc	ra,0x2
    80001a34:	e30080e7          	jalr	-464(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintInt(i);
        KConsole::trapPrintString(" : ");
        KConsole::trapPrintInt((size_t)slab->allocated[i], 16);
        KConsole::trapPrintString("\n");
    }*/
}
    80001a38:	01813083          	ld	ra,24(sp)
    80001a3c:	01013403          	ld	s0,16(sp)
    80001a40:	00813483          	ld	s1,8(sp)
    80001a44:	02010113          	addi	sp,sp,32
    80001a48:	00008067          	ret

0000000080001a4c <_Z16free_slab_objectP6slab_sPKv>:

void free_slab_object(slab_t* slab, const void* objp)
{
    if(slab == nullptr || objp == nullptr)
    80001a4c:	12050a63          	beqz	a0,80001b80 <_Z16free_slab_objectP6slab_sPKv+0x134>
{
    80001a50:	fd010113          	addi	sp,sp,-48
    80001a54:	02113423          	sd	ra,40(sp)
    80001a58:	02813023          	sd	s0,32(sp)
    80001a5c:	00913c23          	sd	s1,24(sp)
    80001a60:	01213823          	sd	s2,16(sp)
    80001a64:	01313423          	sd	s3,8(sp)
    80001a68:	01413023          	sd	s4,0(sp)
    80001a6c:	03010413          	addi	s0,sp,48
    80001a70:	00050493          	mv	s1,a0
    80001a74:	00058993          	mv	s3,a1
    if(slab == nullptr || objp == nullptr)
    80001a78:	08058463          	beqz	a1,80001b00 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;
    int indexOfObject = ((size_t)objp - sizeof(slab_t) - (size_t)slab) / slab->owner->obj_size;
    80001a7c:	40a58933          	sub	s2,a1,a0
    80001a80:	bd890913          	addi	s2,s2,-1064
    80001a84:	01053a03          	ld	s4,16(a0)
    80001a88:	060a3783          	ld	a5,96(s4)
    80001a8c:	02f95933          	divu	s2,s2,a5
    80001a90:	0009091b          	sext.w	s2,s2
    if((size_t)objp != (size_t)slab + sizeof(slab_t) + indexOfObject*slab->owner->obj_size) //address not allocated, random address
    80001a94:	032787b3          	mul	a5,a5,s2
    80001a98:	00f507b3          	add	a5,a0,a5
    80001a9c:	42878793          	addi	a5,a5,1064
    80001aa0:	06f59063          	bne	a1,a5,80001b00 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;

    if(!checkSetIndex(slab, indexOfObject))
    80001aa4:	00090593          	mv	a1,s2
    80001aa8:	00000097          	auipc	ra,0x0
    80001aac:	978080e7          	jalr	-1672(ra) # 80001420 <_Z13checkSetIndexP6slab_si>
    80001ab0:	04050863          	beqz	a0,80001b00 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;

    kmem_cache_t* cachep = slab->owner;
    if(cachep->dtor != nullptr)
    80001ab4:	070a3783          	ld	a5,112(s4)
    80001ab8:	00078663          	beqz	a5,80001ac4 <_Z16free_slab_objectP6slab_sPKv+0x78>
        cachep->dtor((void*)objp);
    80001abc:	00098513          	mv	a0,s3
    80001ac0:	000780e7          	jalr	a5
    if(cachep->ctor != nullptr)
    80001ac4:	068a3783          	ld	a5,104(s4)
    80001ac8:	00078663          	beqz	a5,80001ad4 <_Z16free_slab_objectP6slab_sPKv+0x88>
        cachep->ctor((void*)objp);
    80001acc:	00098513          	mv	a0,s3
    80001ad0:	000780e7          	jalr	a5

    resetAllocatedIndex(slab, indexOfObject);
    80001ad4:	00090593          	mv	a1,s2
    80001ad8:	00048513          	mv	a0,s1
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	ea0080e7          	jalr	-352(ra) # 8000197c <_Z19resetAllocatedIndexP6slab_si>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
    80001ae4:	0184b703          	ld	a4,24(s1)
    80001ae8:	0204b783          	ld	a5,32(s1)
    80001aec:	02f70a63          	beq	a4,a5,80001b20 <_Z16free_slab_objectP6slab_sPKv+0xd4>
        removeFullSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
        if(empty(slab))
            removePartialSlab(slab->owner, slab);
    }
    else if(slab->numOfAllocatedObjects == 1)
    80001af0:	00100713          	li	a4,1
    80001af4:	06e78663          	beq	a5,a4,80001b60 <_Z16free_slab_objectP6slab_sPKv+0x114>
    {
        removePartialSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
    }
    else
        slab->numOfAllocatedObjects--;
    80001af8:	fff78793          	addi	a5,a5,-1
    80001afc:	02f4b023          	sd	a5,32(s1)
}
    80001b00:	02813083          	ld	ra,40(sp)
    80001b04:	02013403          	ld	s0,32(sp)
    80001b08:	01813483          	ld	s1,24(sp)
    80001b0c:	01013903          	ld	s2,16(sp)
    80001b10:	00813983          	ld	s3,8(sp)
    80001b14:	00013a03          	ld	s4,0(sp)
    80001b18:	03010113          	addi	sp,sp,48
    80001b1c:	00008067          	ret
        removeFullSlab(slab->owner, slab);
    80001b20:	00048593          	mv	a1,s1
    80001b24:	0104b503          	ld	a0,16(s1)
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	bc0080e7          	jalr	-1088(ra) # 800016e8 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001b30:	0204b783          	ld	a5,32(s1)
    80001b34:	fff78793          	addi	a5,a5,-1
    80001b38:	02f4b023          	sd	a5,32(s1)
        if(empty(slab))
    80001b3c:	00048513          	mv	a0,s1
    80001b40:	00000097          	auipc	ra,0x0
    80001b44:	a48080e7          	jalr	-1464(ra) # 80001588 <_Z5emptyP6slab_s>
    80001b48:	fa050ce3          	beqz	a0,80001b00 <_Z16free_slab_objectP6slab_sPKv+0xb4>
            removePartialSlab(slab->owner, slab);
    80001b4c:	00048593          	mv	a1,s1
    80001b50:	0104b503          	ld	a0,16(s1)
    80001b54:	00000097          	auipc	ra,0x0
    80001b58:	bec080e7          	jalr	-1044(ra) # 80001740 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
    80001b5c:	fa5ff06f          	j	80001b00 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        removePartialSlab(slab->owner, slab);
    80001b60:	00048593          	mv	a1,s1
    80001b64:	0104b503          	ld	a0,16(s1)
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	bd8080e7          	jalr	-1064(ra) # 80001740 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001b70:	0204b783          	ld	a5,32(s1)
    80001b74:	fff78793          	addi	a5,a5,-1
    80001b78:	02f4b023          	sd	a5,32(s1)
    80001b7c:	f85ff06f          	j	80001b00 <_Z16free_slab_objectP6slab_sPKv+0xb4>
    80001b80:	00008067          	ret

0000000080001b84 <_Z9kmem_initPvi>:
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
}

//slab allocator public interface-----------------------------------------------------------------------------
void kmem_init(void *space, int block_num)
{
    80001b84:	ff010113          	addi	sp,sp,-16
    80001b88:	00113423          	sd	ra,8(sp)
    80001b8c:	00813023          	sd	s0,0(sp)
    80001b90:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init(space, block_num);
    80001b94:	00001097          	auipc	ra,0x1
    80001b98:	4cc080e7          	jalr	1228(ra) # 80003060 <_Z10buddy_initPvm>
    slabAllocator = slab_allocator_init(buddy);
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	80c080e7          	jalr	-2036(ra) # 800013a8 <_Z19slab_allocator_initP14buddyAllocator>
    80001ba4:	0000a797          	auipc	a5,0xa
    80001ba8:	0aa7be23          	sd	a0,188(a5) # 8000bc60 <_ZL13slabAllocator>
}
    80001bac:	00813083          	ld	ra,8(sp)
    80001bb0:	00013403          	ld	s0,0(sp)
    80001bb4:	01010113          	addi	sp,sp,16
    80001bb8:	00008067          	ret

0000000080001bbc <_Z16kmem_cache_allocP12kmem_cache_s>:
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    return newCache;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    80001bbc:	fe010113          	addi	sp,sp,-32
    80001bc0:	00113c23          	sd	ra,24(sp)
    80001bc4:	00813823          	sd	s0,16(sp)
    80001bc8:	00913423          	sd	s1,8(sp)
    80001bcc:	01213023          	sd	s2,0(sp)
    80001bd0:	02010413          	addi	s0,sp,32
    80001bd4:	00050493          	mv	s1,a0
    if(cachep == nullptr)
    80001bd8:	10050a63          	beqz	a0,80001cec <_Z16kmem_cache_allocP12kmem_cache_s+0x130>
        return nullptr;

    if(cachep->slabs_partial != nullptr)
    80001bdc:	05053503          	ld	a0,80(a0)
    80001be0:	04051a63          	bnez	a0,80001c34 <_Z16kmem_cache_allocP12kmem_cache_s+0x78>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
        if(full(cachep->slabs_partial))
            putPartialToFull(cachep);
        return allocatedAddr;
    }
    else if(cachep->slabs_empty != nullptr)
    80001be4:	0404b503          	ld	a0,64(s1)
    80001be8:	08050a63          	beqz	a0,80001c7c <_Z16kmem_cache_allocP12kmem_cache_s+0xc0>
    {
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	8bc080e7          	jalr	-1860(ra) # 800014a8 <_Z14allocateObjectP6slab_s>
    80001bf4:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001bf8:	0404b503          	ld	a0,64(s1)
    80001bfc:	00000097          	auipc	ra,0x0
    80001c00:	98c080e7          	jalr	-1652(ra) # 80001588 <_Z5emptyP6slab_s>
    80001c04:	04051663          	bnez	a0,80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        {
            putEmptyToPartial(cachep);
    80001c08:	00048513          	mv	a0,s1
    80001c0c:	00000097          	auipc	ra,0x0
    80001c10:	a84080e7          	jalr	-1404(ra) # 80001690 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001c14:	0504b503          	ld	a0,80(s1)
    80001c18:	00000097          	auipc	ra,0x0
    80001c1c:	948080e7          	jalr	-1720(ra) # 80001560 <_Z4fullP6slab_s>
    80001c20:	02050863          	beqz	a0,80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001c24:	00048513          	mv	a0,s1
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	a10080e7          	jalr	-1520(ra) # 80001638 <_Z16putPartialToFullP12kmem_cache_s>
        }
        return allocatedAddr;
    80001c30:	0200006f          	j	80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	874080e7          	jalr	-1932(ra) # 800014a8 <_Z14allocateObjectP6slab_s>
    80001c3c:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    80001c40:	0504b503          	ld	a0,80(s1)
    80001c44:	00000097          	auipc	ra,0x0
    80001c48:	91c080e7          	jalr	-1764(ra) # 80001560 <_Z4fullP6slab_s>
    80001c4c:	02051063          	bnez	a0,80001c6c <_Z16kmem_cache_allocP12kmem_cache_s+0xb0>
                putPartialToFull(cachep);
        }
        return allocatedAddr;
    }
    return nullptr;
}
    80001c50:	00090513          	mv	a0,s2
    80001c54:	01813083          	ld	ra,24(sp)
    80001c58:	01013403          	ld	s0,16(sp)
    80001c5c:	00813483          	ld	s1,8(sp)
    80001c60:	00013903          	ld	s2,0(sp)
    80001c64:	02010113          	addi	sp,sp,32
    80001c68:	00008067          	ret
            putPartialToFull(cachep);
    80001c6c:	00048513          	mv	a0,s1
    80001c70:	00000097          	auipc	ra,0x0
    80001c74:	9c8080e7          	jalr	-1592(ra) # 80001638 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001c78:	fd9ff06f          	j	80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        allocateSlab(cachep);
    80001c7c:	00048513          	mv	a0,s1
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	b18080e7          	jalr	-1256(ra) # 80001798 <_Z12allocateSlabP12kmem_cache_s>
        if(cachep->slabs_empty == nullptr)
    80001c88:	0404b903          	ld	s2,64(s1)
    80001c8c:	04090863          	beqz	s2,80001cdc <_Z16kmem_cache_allocP12kmem_cache_s+0x120>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001c90:	00090513          	mv	a0,s2
    80001c94:	00000097          	auipc	ra,0x0
    80001c98:	814080e7          	jalr	-2028(ra) # 800014a8 <_Z14allocateObjectP6slab_s>
    80001c9c:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001ca0:	0404b503          	ld	a0,64(s1)
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	8e4080e7          	jalr	-1820(ra) # 80001588 <_Z5emptyP6slab_s>
    80001cac:	fa0512e3          	bnez	a0,80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            putEmptyToPartial(cachep);
    80001cb0:	00048513          	mv	a0,s1
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	9dc080e7          	jalr	-1572(ra) # 80001690 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001cbc:	0504b503          	ld	a0,80(s1)
    80001cc0:	00000097          	auipc	ra,0x0
    80001cc4:	8a0080e7          	jalr	-1888(ra) # 80001560 <_Z4fullP6slab_s>
    80001cc8:	f80504e3          	beqz	a0,80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001ccc:	00048513          	mv	a0,s1
    80001cd0:	00000097          	auipc	ra,0x0
    80001cd4:	968080e7          	jalr	-1688(ra) # 80001638 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001cd8:	f79ff06f          	j	80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            cachep->errors|=EXPAND_ERROR;
    80001cdc:	0784a783          	lw	a5,120(s1)
    80001ce0:	0017e793          	ori	a5,a5,1
    80001ce4:	06f4ac23          	sw	a5,120(s1)
            return nullptr;
    80001ce8:	f69ff06f          	j	80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        return nullptr;
    80001cec:	00050913          	mv	s2,a0
    80001cf0:	f61ff06f          	j	80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>

0000000080001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>:
{
    80001cf4:	fc010113          	addi	sp,sp,-64
    80001cf8:	02113c23          	sd	ra,56(sp)
    80001cfc:	02813823          	sd	s0,48(sp)
    80001d00:	02913423          	sd	s1,40(sp)
    80001d04:	03213023          	sd	s2,32(sp)
    80001d08:	01313c23          	sd	s3,24(sp)
    80001d0c:	01413823          	sd	s4,16(sp)
    80001d10:	01513423          	sd	s5,8(sp)
    80001d14:	04010413          	addi	s0,sp,64
    80001d18:	00050993          	mv	s3,a0
    80001d1c:	00058913          	mv	s2,a1
    80001d20:	00060a13          	mv	s4,a2
    80001d24:	00068a93          	mv	s5,a3
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001d28:	0000a517          	auipc	a0,0xa
    80001d2c:	f3853503          	ld	a0,-200(a0) # 8000bc60 <_ZL13slabAllocator>
    80001d30:	07050513          	addi	a0,a0,112
    80001d34:	00000097          	auipc	ra,0x0
    80001d38:	e88080e7          	jalr	-376(ra) # 80001bbc <_Z16kmem_cache_allocP12kmem_cache_s>
    80001d3c:	00050493          	mv	s1,a0
    if(newCache == nullptr)
    80001d40:	02050863          	beqz	a0,80001d70 <_Z17kmem_cache_createPKcmPFvPvES3_+0x7c>
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    80001d44:	00090513          	mv	a0,s2
    80001d48:	00000097          	auipc	ra,0x0
    80001d4c:	b3c080e7          	jalr	-1220(ra) # 80001884 <_Z18getOptimalSlabSizem>
    80001d50:	00050613          	mv	a2,a0
    80001d54:	000a8793          	mv	a5,s5
    80001d58:	000a0713          	mv	a4,s4
    80001d5c:	00090693          	mv	a3,s2
    80001d60:	00098593          	mv	a1,s3
    80001d64:	00048513          	mv	a0,s1
    80001d68:	fffff097          	auipc	ra,0xfffff
    80001d6c:	5b4080e7          	jalr	1460(ra) # 8000131c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
}
    80001d70:	00048513          	mv	a0,s1
    80001d74:	03813083          	ld	ra,56(sp)
    80001d78:	03013403          	ld	s0,48(sp)
    80001d7c:	02813483          	ld	s1,40(sp)
    80001d80:	02013903          	ld	s2,32(sp)
    80001d84:	01813983          	ld	s3,24(sp)
    80001d88:	01013a03          	ld	s4,16(sp)
    80001d8c:	00813a83          	ld	s5,8(sp)
    80001d90:	04010113          	addi	sp,sp,64
    80001d94:	00008067          	ret

0000000080001d98 <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    if(cachep == nullptr || objp == nullptr)
    80001d98:	04050663          	beqz	a0,80001de4 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x4c>
{
    80001d9c:	fe010113          	addi	sp,sp,-32
    80001da0:	00113c23          	sd	ra,24(sp)
    80001da4:	00813823          	sd	s0,16(sp)
    80001da8:	00913423          	sd	s1,8(sp)
    80001dac:	02010413          	addi	s0,sp,32
    80001db0:	00058493          	mv	s1,a1
    if(cachep == nullptr || objp == nullptr)
    80001db4:	00058e63          	beqz	a1,80001dd0 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>
        return;
    slab_t* slab = findSlab(cachep, objp);
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	b34080e7          	jalr	-1228(ra) # 800018ec <_Z8findSlabP12kmem_cache_sPKv>
    if(slab == nullptr) return;
    80001dc0:	00050863          	beqz	a0,80001dd0 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>

    free_slab_object(slab, objp);
    80001dc4:	00048593          	mv	a1,s1
    80001dc8:	00000097          	auipc	ra,0x0
    80001dcc:	c84080e7          	jalr	-892(ra) # 80001a4c <_Z16free_slab_objectP6slab_sPKv>
}
    80001dd0:	01813083          	ld	ra,24(sp)
    80001dd4:	01013403          	ld	s0,16(sp)
    80001dd8:	00813483          	ld	s1,8(sp)
    80001ddc:	02010113          	addi	sp,sp,32
    80001de0:	00008067          	ret
    80001de4:	00008067          	ret

0000000080001de8 <_Z15kmem_cache_infoP12kmem_cache_s>:

//TODO what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    80001de8:	14050c63          	beqz	a0,80001f40 <_Z15kmem_cache_infoP12kmem_cache_s+0x158>
{
    80001dec:	fe010113          	addi	sp,sp,-32
    80001df0:	00113c23          	sd	ra,24(sp)
    80001df4:	00813823          	sd	s0,16(sp)
    80001df8:	00913423          	sd	s1,8(sp)
    80001dfc:	01213023          	sd	s2,0(sp)
    80001e00:	02010413          	addi	s0,sp,32
    80001e04:	00050913          	mv	s2,a0
        return;
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n");
    80001e08:	00007517          	auipc	a0,0x7
    80001e0c:	28850513          	addi	a0,a0,648 # 80009090 <CONSOLE_STATUS+0x80>
    80001e10:	00002097          	auipc	ra,0x2
    80001e14:	978080e7          	jalr	-1672(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Kmem Cache Info-------------------------------------\n");
    80001e18:	00007517          	auipc	a0,0x7
    80001e1c:	28850513          	addi	a0,a0,648 # 800090a0 <CONSOLE_STATUS+0x90>
    80001e20:	00002097          	auipc	ra,0x2
    80001e24:	968080e7          	jalr	-1688(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache Name ");
    80001e28:	00007517          	auipc	a0,0x7
    80001e2c:	2b050513          	addi	a0,a0,688 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001e30:	00002097          	auipc	ra,0x2
    80001e34:	958080e7          	jalr	-1704(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    80001e38:	00090513          	mv	a0,s2
    80001e3c:	00002097          	auipc	ra,0x2
    80001e40:	94c080e7          	jalr	-1716(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    80001e44:	00007517          	auipc	a0,0x7
    80001e48:	33c50513          	addi	a0,a0,828 # 80009180 <CONSOLE_STATUS+0x170>
    80001e4c:	00002097          	auipc	ra,0x2
    80001e50:	93c080e7          	jalr	-1732(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Cache slab size in blocks ", cachep->slab_size);
    80001e54:	00a00613          	li	a2,10
    80001e58:	05893583          	ld	a1,88(s2)
    80001e5c:	00007517          	auipc	a0,0x7
    80001e60:	28c50513          	addi	a0,a0,652 # 800090e8 <CONSOLE_STATUS+0xd8>
    80001e64:	00002097          	auipc	ra,0x2
    80001e68:	9fc080e7          	jalr	-1540(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Cache obj size in bytes ", cachep->obj_size);
    80001e6c:	00a00613          	li	a2,10
    80001e70:	06093583          	ld	a1,96(s2)
    80001e74:	00007517          	auipc	a0,0x7
    80001e78:	29450513          	addi	a0,a0,660 # 80009108 <CONSOLE_STATUS+0xf8>
    80001e7c:	00002097          	auipc	ra,0x2
    80001e80:	9e4080e7          	jalr	-1564(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    
    KConsole::trapPrintString("Slabs info-------------------\n");
    80001e84:	00007517          	auipc	a0,0x7
    80001e88:	2a450513          	addi	a0,a0,676 # 80009128 <CONSOLE_STATUS+0x118>
    80001e8c:	00002097          	auipc	ra,0x2
    80001e90:	8fc080e7          	jalr	-1796(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>

    KConsole::trapPrintString("Full slabs\n");
    80001e94:	00007517          	auipc	a0,0x7
    80001e98:	2b450513          	addi	a0,a0,692 # 80009148 <CONSOLE_STATUS+0x138>
    80001e9c:	00002097          	auipc	ra,0x2
    80001ea0:	8ec080e7          	jalr	-1812(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    slab_t* slab = cachep->slabs_full;
    80001ea4:	04893483          	ld	s1,72(s2)
    while(slab != nullptr)
    80001ea8:	00048c63          	beqz	s1,80001ec0 <_Z15kmem_cache_infoP12kmem_cache_s+0xd8>
    {
        printSlabInfo(slab);
    80001eac:	00048513          	mv	a0,s1
    80001eb0:	00000097          	auipc	ra,0x0
    80001eb4:	b18080e7          	jalr	-1256(ra) # 800019c8 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001eb8:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001ebc:	fedff06f          	j	80001ea8 <_Z15kmem_cache_infoP12kmem_cache_s+0xc0>
    }

    KConsole::trapPrintString("Partial slabs\n");
    80001ec0:	00007517          	auipc	a0,0x7
    80001ec4:	29850513          	addi	a0,a0,664 # 80009158 <CONSOLE_STATUS+0x148>
    80001ec8:	00002097          	auipc	ra,0x2
    80001ecc:	8c0080e7          	jalr	-1856(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_partial;
    80001ed0:	05093483          	ld	s1,80(s2)
    while(slab != nullptr)
    80001ed4:	00048c63          	beqz	s1,80001eec <_Z15kmem_cache_infoP12kmem_cache_s+0x104>
    {
        printSlabInfo(slab);
    80001ed8:	00048513          	mv	a0,s1
    80001edc:	00000097          	auipc	ra,0x0
    80001ee0:	aec080e7          	jalr	-1300(ra) # 800019c8 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001ee4:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001ee8:	fedff06f          	j	80001ed4 <_Z15kmem_cache_infoP12kmem_cache_s+0xec>
    }

    KConsole::trapPrintString("Empty slabs\n");
    80001eec:	00007517          	auipc	a0,0x7
    80001ef0:	27c50513          	addi	a0,a0,636 # 80009168 <CONSOLE_STATUS+0x158>
    80001ef4:	00002097          	auipc	ra,0x2
    80001ef8:	894080e7          	jalr	-1900(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_empty;
    80001efc:	04093483          	ld	s1,64(s2)
    while(slab != nullptr)
    80001f00:	00048c63          	beqz	s1,80001f18 <_Z15kmem_cache_infoP12kmem_cache_s+0x130>
    {
        printSlabInfo(slab);
    80001f04:	00048513          	mv	a0,s1
    80001f08:	00000097          	auipc	ra,0x0
    80001f0c:	ac0080e7          	jalr	-1344(ra) # 800019c8 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f10:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f14:	fedff06f          	j	80001f00 <_Z15kmem_cache_infoP12kmem_cache_s+0x118>
    }

    KConsole::trapPrintString("\n\n\n\n\n\n\n\n");
    80001f18:	00007517          	auipc	a0,0x7
    80001f1c:	17850513          	addi	a0,a0,376 # 80009090 <CONSOLE_STATUS+0x80>
    80001f20:	00002097          	auipc	ra,0x2
    80001f24:	868080e7          	jalr	-1944(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
}
    80001f28:	01813083          	ld	ra,24(sp)
    80001f2c:	01013403          	ld	s0,16(sp)
    80001f30:	00813483          	ld	s1,8(sp)
    80001f34:	00013903          	ld	s2,0(sp)
    80001f38:	02010113          	addi	sp,sp,32
    80001f3c:	00008067          	ret
    80001f40:	00008067          	ret

0000000080001f44 <_Z22printSlabAllocatorInfov>:
{
    80001f44:	fe010113          	addi	sp,sp,-32
    80001f48:	00113c23          	sd	ra,24(sp)
    80001f4c:	00813823          	sd	s0,16(sp)
    80001f50:	00913423          	sd	s1,8(sp)
    80001f54:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    80001f58:	00007517          	auipc	a0,0x7
    80001f5c:	22050513          	addi	a0,a0,544 # 80009178 <CONSOLE_STATUS+0x168>
    80001f60:	00002097          	auipc	ra,0x2
    80001f64:	828080e7          	jalr	-2008(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Slab allocator info----------------------------------------------------------\n");
    80001f68:	00007517          	auipc	a0,0x7
    80001f6c:	22050513          	addi	a0,a0,544 # 80009188 <CONSOLE_STATUS+0x178>
    80001f70:	00002097          	auipc	ra,0x2
    80001f74:	818080e7          	jalr	-2024(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab allocator buddy address ", (size_t)slabAllocator->buddy,16);
    80001f78:	0000a497          	auipc	s1,0xa
    80001f7c:	ce848493          	addi	s1,s1,-792 # 8000bc60 <_ZL13slabAllocator>
    80001f80:	0004b783          	ld	a5,0(s1)
    80001f84:	01000613          	li	a2,16
    80001f88:	0007b583          	ld	a1,0(a5)
    80001f8c:	00007517          	auipc	a0,0x7
    80001f90:	24c50513          	addi	a0,a0,588 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80001f94:	00002097          	auipc	ra,0x2
    80001f98:	8cc080e7          	jalr	-1844(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Slab allocator address ", (size_t)slabAllocator, 16);
    80001f9c:	01000613          	li	a2,16
    80001fa0:	0004b583          	ld	a1,0(s1)
    80001fa4:	00007517          	auipc	a0,0x7
    80001fa8:	25450513          	addi	a0,a0,596 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80001fac:	00002097          	auipc	ra,0x2
    80001fb0:	8b4080e7          	jalr	-1868(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintString("Cache of caches info\n");
    80001fb4:	00007517          	auipc	a0,0x7
    80001fb8:	25c50513          	addi	a0,a0,604 # 80009210 <CONSOLE_STATUS+0x200>
    80001fbc:	00001097          	auipc	ra,0x1
    80001fc0:	7cc080e7          	jalr	1996(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    kmem_cache_info(&slabAllocator->cacheOfCaches);
    80001fc4:	0004b503          	ld	a0,0(s1)
    80001fc8:	07050513          	addi	a0,a0,112
    80001fcc:	00000097          	auipc	ra,0x0
    80001fd0:	e1c080e7          	jalr	-484(ra) # 80001de8 <_Z15kmem_cache_infoP12kmem_cache_s>
    KConsole::trapPrintString("Caches for buffers\n");
    80001fd4:	00007517          	auipc	a0,0x7
    80001fd8:	25450513          	addi	a0,a0,596 # 80009228 <CONSOLE_STATUS+0x218>
    80001fdc:	00001097          	auipc	ra,0x1
    80001fe0:	7ac080e7          	jalr	1964(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001fe4:	00000493          	li	s1,0
    80001fe8:	0100006f          	j	80001ff8 <_Z22printSlabAllocatorInfov+0xb4>
            kmem_cache_info(slabAllocator->cachesBuffers[i]);
    80001fec:	00000097          	auipc	ra,0x0
    80001ff0:	dfc080e7          	jalr	-516(ra) # 80001de8 <_Z15kmem_cache_infoP12kmem_cache_s>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001ff4:	00148493          	addi	s1,s1,1
    80001ff8:	00c00793          	li	a5,12
    80001ffc:	0297e063          	bltu	a5,s1,8000201c <_Z22printSlabAllocatorInfov+0xd8>
        if(slabAllocator->cachesBuffers[i] != nullptr)
    80002000:	00349793          	slli	a5,s1,0x3
    80002004:	0000a717          	auipc	a4,0xa
    80002008:	c5c73703          	ld	a4,-932(a4) # 8000bc60 <_ZL13slabAllocator>
    8000200c:	00f707b3          	add	a5,a4,a5
    80002010:	0087b503          	ld	a0,8(a5)
    80002014:	fc051ce3          	bnez	a0,80001fec <_Z22printSlabAllocatorInfov+0xa8>
    80002018:	fddff06f          	j	80001ff4 <_Z22printSlabAllocatorInfov+0xb0>
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    8000201c:	00007517          	auipc	a0,0x7
    80002020:	15c50513          	addi	a0,a0,348 # 80009178 <CONSOLE_STATUS+0x168>
    80002024:	00001097          	auipc	ra,0x1
    80002028:	764080e7          	jalr	1892(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
}
    8000202c:	01813083          	ld	ra,24(sp)
    80002030:	01013403          	ld	s0,16(sp)
    80002034:	00813483          	ld	s1,8(sp)
    80002038:	02010113          	addi	sp,sp,32
    8000203c:	00008067          	ret

0000000080002040 <_Z7kmallocm>:

void *kmalloc(size_t size)
{
    80002040:	fd010113          	addi	sp,sp,-48
    80002044:	02113423          	sd	ra,40(sp)
    80002048:	02813023          	sd	s0,32(sp)
    8000204c:	00913c23          	sd	s1,24(sp)
    80002050:	01213823          	sd	s2,16(sp)
    80002054:	01313423          	sd	s3,8(sp)
    80002058:	03010413          	addi	s0,sp,48
    size_t level = getDeg2Ceil(size);
    8000205c:	00001097          	auipc	ra,0x1
    80002060:	c78080e7          	jalr	-904(ra) # 80002cd4 <_Z11getDeg2Ceilm>
    if(level < CACHE_BUFFER_SMALL)
    80002064:	00400793          	li	a5,4
    80002068:	00a7fa63          	bgeu	a5,a0,8000207c <_Z7kmallocm+0x3c>
        level = CACHE_BUFFER_SMALL;
    if(level > CACHE_BUFFER_BIG)
    8000206c:	01100793          	li	a5,17
    80002070:	00a7f863          	bgeu	a5,a0,80002080 <_Z7kmallocm+0x40>
        return nullptr;
    80002074:	00000913          	li	s2,0
    80002078:	04c0006f          	j	800020c4 <_Z7kmallocm+0x84>
        level = CACHE_BUFFER_SMALL;
    8000207c:	00500513          	li	a0,5
    size = (1 << level);
    80002080:	00100693          	li	a3,1
    80002084:	00a699bb          	sllw	s3,a3,a0
    size_t index = level - CACHE_BUFFER_SMALL;
    80002088:	ffb50493          	addi	s1,a0,-5
    if(slabAllocator->cachesBuffers[index] == nullptr)
    8000208c:	0000a917          	auipc	s2,0xa
    80002090:	bd493903          	ld	s2,-1068(s2) # 8000bc60 <_ZL13slabAllocator>
    80002094:	00349793          	slli	a5,s1,0x3
    80002098:	00f907b3          	add	a5,s2,a5
    8000209c:	0087b783          	ld	a5,8(a5)
    800020a0:	04078263          	beqz	a5,800020e4 <_Z7kmallocm+0xa4>
        if(slabAllocator->cachesBuffers[index] == nullptr)
            return nullptr;
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    }

    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
    800020a4:	00349513          	slli	a0,s1,0x3
    800020a8:	0000a497          	auipc	s1,0xa
    800020ac:	bb84b483          	ld	s1,-1096(s1) # 8000bc60 <_ZL13slabAllocator>
    800020b0:	00a48533          	add	a0,s1,a0
    800020b4:	00853503          	ld	a0,8(a0)
    800020b8:	00000097          	auipc	ra,0x0
    800020bc:	b04080e7          	jalr	-1276(ra) # 80001bbc <_Z16kmem_cache_allocP12kmem_cache_s>
    800020c0:	00050913          	mv	s2,a0
}
    800020c4:	00090513          	mv	a0,s2
    800020c8:	02813083          	ld	ra,40(sp)
    800020cc:	02013403          	ld	s0,32(sp)
    800020d0:	01813483          	ld	s1,24(sp)
    800020d4:	01013903          	ld	s2,16(sp)
    800020d8:	00813983          	ld	s3,8(sp)
    800020dc:	03010113          	addi	sp,sp,48
    800020e0:	00008067          	ret
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    800020e4:	07090513          	addi	a0,s2,112
    800020e8:	00000097          	auipc	ra,0x0
    800020ec:	ad4080e7          	jalr	-1324(ra) # 80001bbc <_Z16kmem_cache_allocP12kmem_cache_s>
    800020f0:	00349713          	slli	a4,s1,0x3
    800020f4:	00e90933          	add	s2,s2,a4
    800020f8:	00a93423          	sd	a0,8(s2)
        if(slabAllocator->cachesBuffers[index] == nullptr)
    800020fc:	0000a797          	auipc	a5,0xa
    80002100:	b647b783          	ld	a5,-1180(a5) # 8000bc60 <_ZL13slabAllocator>
    80002104:	00e787b3          	add	a5,a5,a4
    80002108:	0087b903          	ld	s2,8(a5)
    8000210c:	fa090ce3          	beqz	s2,800020c4 <_Z7kmallocm+0x84>
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    80002110:	00098513          	mv	a0,s3
    80002114:	fffff097          	auipc	ra,0xfffff
    80002118:	770080e7          	jalr	1904(ra) # 80001884 <_Z18getOptimalSlabSizem>
    8000211c:	00050613          	mv	a2,a0
    80002120:	00000793          	li	a5,0
    80002124:	00000713          	li	a4,0
    80002128:	00098693          	mv	a3,s3
    8000212c:	00007597          	auipc	a1,0x7
    80002130:	11458593          	addi	a1,a1,276 # 80009240 <CONSOLE_STATUS+0x230>
    80002134:	00090513          	mv	a0,s2
    80002138:	fffff097          	auipc	ra,0xfffff
    8000213c:	1e4080e7          	jalr	484(ra) # 8000131c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
    80002140:	f65ff06f          	j	800020a4 <_Z7kmallocm+0x64>

0000000080002144 <_Z5kfreePKv>:

void kfree(const void *objp)
{
    if(objp == nullptr)
    80002144:	08050263          	beqz	a0,800021c8 <_Z5kfreePKv+0x84>
{
    80002148:	fe010113          	addi	sp,sp,-32
    8000214c:	00113c23          	sd	ra,24(sp)
    80002150:	00813823          	sd	s0,16(sp)
    80002154:	00913423          	sd	s1,8(sp)
    80002158:	01213023          	sd	s2,0(sp)
    8000215c:	02010413          	addi	s0,sp,32
    80002160:	00050913          	mv	s2,a0
        return;
    slab_t* slab = nullptr;
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002164:	00000493          	li	s1,0
    slab_t* slab = nullptr;
    80002168:	00000513          	li	a0,0
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    8000216c:	00c00793          	li	a5,12
    80002170:	0297e863          	bltu	a5,s1,800021a0 <_Z5kfreePKv+0x5c>
    {
        slab = findSlab(slabAllocator->cachesBuffers[i], objp);
    80002174:	00349793          	slli	a5,s1,0x3
    80002178:	0000a717          	auipc	a4,0xa
    8000217c:	ae873703          	ld	a4,-1304(a4) # 8000bc60 <_ZL13slabAllocator>
    80002180:	00f707b3          	add	a5,a4,a5
    80002184:	00090593          	mv	a1,s2
    80002188:	0087b503          	ld	a0,8(a5)
    8000218c:	fffff097          	auipc	ra,0xfffff
    80002190:	760080e7          	jalr	1888(ra) # 800018ec <_Z8findSlabP12kmem_cache_sPKv>
        if(slab != nullptr) break;
    80002194:	00051663          	bnez	a0,800021a0 <_Z5kfreePKv+0x5c>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002198:	00148493          	addi	s1,s1,1
    8000219c:	fd1ff06f          	j	8000216c <_Z5kfreePKv+0x28>
    }
    if(slab != nullptr)
    800021a0:	00050863          	beqz	a0,800021b0 <_Z5kfreePKv+0x6c>
    {
        free_slab_object(slab, objp);
    800021a4:	00090593          	mv	a1,s2
    800021a8:	00000097          	auipc	ra,0x0
    800021ac:	8a4080e7          	jalr	-1884(ra) # 80001a4c <_Z16free_slab_objectP6slab_sPKv>
    }
}
    800021b0:	01813083          	ld	ra,24(sp)
    800021b4:	01013403          	ld	s0,16(sp)
    800021b8:	00813483          	ld	s1,8(sp)
    800021bc:	00013903          	ld	s2,0(sp)
    800021c0:	02010113          	addi	sp,sp,32
    800021c4:	00008067          	ret
    800021c8:	00008067          	ret

00000000800021cc <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep)
{
    800021cc:	fe010113          	addi	sp,sp,-32
    800021d0:	00113c23          	sd	ra,24(sp)
    800021d4:	00813823          	sd	s0,16(sp)
    800021d8:	00913423          	sd	s1,8(sp)
    800021dc:	02010413          	addi	s0,sp,32
    800021e0:	00050493          	mv	s1,a0
    //if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr)
    //{
    //    cachep->errors|=DESTROY_ERROR;
    //    return;
    //}
    destroy_slab_list(&cachep->slabs_empty);
    800021e4:	04050513          	addi	a0,a0,64
    800021e8:	fffff097          	auipc	ra,0xfffff
    800021ec:	0a4080e7          	jalr	164(ra) # 8000128c <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_partial);
    800021f0:	05048513          	addi	a0,s1,80
    800021f4:	fffff097          	auipc	ra,0xfffff
    800021f8:	098080e7          	jalr	152(ra) # 8000128c <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_full);
    800021fc:	04848513          	addi	a0,s1,72
    80002200:	fffff097          	auipc	ra,0xfffff
    80002204:	08c080e7          	jalr	140(ra) # 8000128c <_Z17destroy_slab_listPP6slab_s>
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
    80002208:	00048593          	mv	a1,s1
    8000220c:	0000a517          	auipc	a0,0xa
    80002210:	a5453503          	ld	a0,-1452(a0) # 8000bc60 <_ZL13slabAllocator>
    80002214:	07050513          	addi	a0,a0,112
    80002218:	00000097          	auipc	ra,0x0
    8000221c:	b80080e7          	jalr	-1152(ra) # 80001d98 <_Z15kmem_cache_freeP12kmem_cache_sPv>
}
    80002220:	01813083          	ld	ra,24(sp)
    80002224:	01013403          	ld	s0,16(sp)
    80002228:	00813483          	ld	s1,8(sp)
    8000222c:	02010113          	addi	sp,sp,32
    80002230:	00008067          	ret

0000000080002234 <_Z17kmem_cache_shrinkP12kmem_cache_s>:

int kmem_cache_shrink(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    80002234:	02050863          	beqz	a0,80002264 <_Z17kmem_cache_shrinkP12kmem_cache_s+0x30>
{
    80002238:	ff010113          	addi	sp,sp,-16
    8000223c:	00113423          	sd	ra,8(sp)
    80002240:	00813023          	sd	s0,0(sp)
    80002244:	01010413          	addi	s0,sp,16
        return 0;
    int totalBlocks = destroy_slab_list(&cachep->slabs_empty);
    80002248:	04050513          	addi	a0,a0,64
    8000224c:	fffff097          	auipc	ra,0xfffff
    80002250:	040080e7          	jalr	64(ra) # 8000128c <_Z17destroy_slab_listPP6slab_s>
    return totalBlocks;
}
    80002254:	00813083          	ld	ra,8(sp)
    80002258:	00013403          	ld	s0,0(sp)
    8000225c:	01010113          	addi	sp,sp,16
    80002260:	00008067          	ret
        return 0;
    80002264:	00000513          	li	a0,0
}
    80002268:	00008067          	ret

000000008000226c <_Z16kmem_cache_errorP12kmem_cache_s>:

int kmem_cache_error(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    8000226c:	06050a63          	beqz	a0,800022e0 <_Z16kmem_cache_errorP12kmem_cache_s+0x74>
{
    80002270:	fe010113          	addi	sp,sp,-32
    80002274:	00113c23          	sd	ra,24(sp)
    80002278:	00813823          	sd	s0,16(sp)
    8000227c:	00913423          	sd	s1,8(sp)
    80002280:	02010413          	addi	s0,sp,32
    80002284:	00050493          	mv	s1,a0
        return 0;

    if(cachep->errors & EXPAND_ERROR)
    80002288:	07852783          	lw	a5,120(a0)
    8000228c:	0017f793          	andi	a5,a5,1
    80002290:	02079463          	bnez	a5,800022b8 <_Z16kmem_cache_errorP12kmem_cache_s+0x4c>
        KConsole::trapPrintString("EXPAND ERROR\n");
    if(cachep->errors & DESTROY_ERROR)
    80002294:	0784a783          	lw	a5,120(s1)
    80002298:	0027f793          	andi	a5,a5,2
    8000229c:	02079863          	bnez	a5,800022cc <_Z16kmem_cache_errorP12kmem_cache_s+0x60>
        KConsole::trapPrintString("DESTROY ERROR");

    return cachep->errors;
    800022a0:	0784a503          	lw	a0,120(s1)
}
    800022a4:	01813083          	ld	ra,24(sp)
    800022a8:	01013403          	ld	s0,16(sp)
    800022ac:	00813483          	ld	s1,8(sp)
    800022b0:	02010113          	addi	sp,sp,32
    800022b4:	00008067          	ret
        KConsole::trapPrintString("EXPAND ERROR\n");
    800022b8:	00007517          	auipc	a0,0x7
    800022bc:	fa050513          	addi	a0,a0,-96 # 80009258 <CONSOLE_STATUS+0x248>
    800022c0:	00001097          	auipc	ra,0x1
    800022c4:	4c8080e7          	jalr	1224(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    800022c8:	fcdff06f          	j	80002294 <_Z16kmem_cache_errorP12kmem_cache_s+0x28>
        KConsole::trapPrintString("DESTROY ERROR");
    800022cc:	00007517          	auipc	a0,0x7
    800022d0:	f9c50513          	addi	a0,a0,-100 # 80009268 <CONSOLE_STATUS+0x258>
    800022d4:	00001097          	auipc	ra,0x1
    800022d8:	4b4080e7          	jalr	1204(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    800022dc:	fc5ff06f          	j	800022a0 <_Z16kmem_cache_errorP12kmem_cache_s+0x34>
        return 0;
    800022e0:	00000513          	li	a0,0
}
    800022e4:	00008067          	ret

00000000800022e8 <_Z9mem_allocm>:
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00813423          	sd	s0,8(sp)
    800022f0:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    800022f4:	03f50513          	addi	a0,a0,63
    800022f8:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    800022fc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80002300:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    80002304:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    80002308:	00050513          	mv	a0,a0

    if(allocatedAddr == 0)
        return nullptr;

    return (void*)allocatedAddr;
}
    8000230c:	00813403          	ld	s0,8(sp)
    80002310:	01010113          	addi	sp,sp,16
    80002314:	00008067          	ret

0000000080002318 <_Z8mem_freePv>:

int mem_free(void* p)
{
    80002318:	ff010113          	addi	sp,sp,-16
    8000231c:	00813423          	sd	s0,8(sp)
    80002320:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80002324:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    80002328:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    8000232c:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002330:	00050513          	mv	a0,a0

    return result;
}
    80002334:	0005051b          	sext.w	a0,a0
    80002338:	00813403          	ld	s0,8(sp)
    8000233c:	01010113          	addi	sp,sp,16
    80002340:	00008067          	ret

0000000080002344 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    80002344:	fd010113          	addi	sp,sp,-48
    80002348:	02113423          	sd	ra,40(sp)
    8000234c:	02813023          	sd	s0,32(sp)
    80002350:	00913c23          	sd	s1,24(sp)
    80002354:	01213823          	sd	s2,16(sp)
    80002358:	01313423          	sd	s3,8(sp)
    8000235c:	03010413          	addi	s0,sp,48
    80002360:	00050493          	mv	s1,a0
    80002364:	00058913          	mv	s2,a1
    80002368:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    8000236c:	00001537          	lui	a0,0x1
    80002370:	00000097          	auipc	ra,0x0
    80002374:	f78080e7          	jalr	-136(ra) # 800022e8 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == nullptr)
    80002378:	04050263          	beqz	a0,800023bc <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    8000237c:	00050713          	mv	a4,a0
    //__asm__ volatile("mv a4, %0" :  : "r"((uint64)1));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    80002380:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    80002384:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    80002388:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    8000238c:	01100793          	li	a5,17
    80002390:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    80002394:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002398:	00050513          	mv	a0,a0

    return result;
    8000239c:	0005051b          	sext.w	a0,a0
}
    800023a0:	02813083          	ld	ra,40(sp)
    800023a4:	02013403          	ld	s0,32(sp)
    800023a8:	01813483          	ld	s1,24(sp)
    800023ac:	01013903          	ld	s2,16(sp)
    800023b0:	00813983          	ld	s3,8(sp)
    800023b4:	03010113          	addi	sp,sp,48
    800023b8:	00008067          	ret
        return -1;
    800023bc:	fff00513          	li	a0,-1
    800023c0:	fe1ff06f          	j	800023a0 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>

00000000800023c4 <_Z15thread_dispatchv>:

void thread_dispatch()
{
    800023c4:	ff010113          	addi	sp,sp,-16
    800023c8:	00813423          	sd	s0,8(sp)
    800023cc:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    800023d0:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    800023d4:	00000073          	ecall
}
    800023d8:	00813403          	ld	s0,8(sp)
    800023dc:	01010113          	addi	sp,sp,16
    800023e0:	00008067          	ret

00000000800023e4 <_Z11thread_exitv>:

int thread_exit()
{
    800023e4:	ff010113          	addi	sp,sp,-16
    800023e8:	00813423          	sd	s0,8(sp)
    800023ec:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    800023f0:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    800023f4:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800023f8:	00050513          	mv	a0,a0
    return result;
}
    800023fc:	0005051b          	sext.w	a0,a0
    80002400:	00813403          	ld	s0,8(sp)
    80002404:	01010113          	addi	sp,sp,16
    80002408:	00008067          	ret

000000008000240c <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    8000240c:	ff010113          	addi	sp,sp,-16
    80002410:	00813423          	sd	s0,8(sp)
    80002414:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    80002418:	02059593          	slli	a1,a1,0x20
    8000241c:	0205d593          	srli	a1,a1,0x20
    80002420:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80002424:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80002428:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    8000242c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002430:	00050513          	mv	a0,a0
    return result;
}
    80002434:	0005051b          	sext.w	a0,a0
    80002438:	00813403          	ld	s0,8(sp)
    8000243c:	01010113          	addi	sp,sp,16
    80002440:	00008067          	ret

0000000080002444 <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    80002444:	ff010113          	addi	sp,sp,-16
    80002448:	00813423          	sd	s0,8(sp)
    8000244c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80002450:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    80002454:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    80002458:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000245c:	00050513          	mv	a0,a0
    return result;
}
    80002460:	0005051b          	sext.w	a0,a0
    80002464:	00813403          	ld	s0,8(sp)
    80002468:	01010113          	addi	sp,sp,16
    8000246c:	00008067          	ret

0000000080002470 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    80002470:	ff010113          	addi	sp,sp,-16
    80002474:	00813423          	sd	s0,8(sp)
    80002478:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    8000247c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    80002480:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    80002484:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002488:	00050513          	mv	a0,a0
    return result;
}
    8000248c:	0005051b          	sext.w	a0,a0
    80002490:	00813403          	ld	s0,8(sp)
    80002494:	01010113          	addi	sp,sp,16
    80002498:	00008067          	ret

000000008000249c <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    8000249c:	ff010113          	addi	sp,sp,-16
    800024a0:	00813423          	sd	s0,8(sp)
    800024a4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800024a8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    800024ac:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    800024b0:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800024b4:	00050513          	mv	a0,a0
    return result;
}
    800024b8:	0005051b          	sext.w	a0,a0
    800024bc:	00813403          	ld	s0,8(sp)
    800024c0:	01010113          	addi	sp,sp,16
    800024c4:	00008067          	ret

00000000800024c8 <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    800024c8:	ff010113          	addi	sp,sp,-16
    800024cc:	00813423          	sd	s0,8(sp)
    800024d0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    800024d4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    800024d8:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    800024dc:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800024e0:	00050513          	mv	a0,a0
    return result;
}
    800024e4:	0005051b          	sext.w	a0,a0
    800024e8:	00813403          	ld	s0,8(sp)
    800024ec:	01010113          	addi	sp,sp,16
    800024f0:	00008067          	ret

00000000800024f4 <_Z12thread_startPv>:

int thread_start(void* p)
{
    800024f4:	ff010113          	addi	sp,sp,-16
    800024f8:	00813423          	sd	s0,8(sp)
    800024fc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    80002500:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    80002504:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    80002508:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000250c:	00050513          	mv	a0,a0
    return result;
}
    80002510:	0005051b          	sext.w	a0,a0
    80002514:	00813403          	ld	s0,8(sp)
    80002518:	01010113          	addi	sp,sp,16
    8000251c:	00008067          	ret

0000000080002520 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    80002520:	fd010113          	addi	sp,sp,-48
    80002524:	02113423          	sd	ra,40(sp)
    80002528:	02813023          	sd	s0,32(sp)
    8000252c:	00913c23          	sd	s1,24(sp)
    80002530:	01213823          	sd	s2,16(sp)
    80002534:	01313423          	sd	s3,8(sp)
    80002538:	03010413          	addi	s0,sp,48
    8000253c:	00050493          	mv	s1,a0
    80002540:	00058913          	mv	s2,a1
    80002544:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80002548:	00001537          	lui	a0,0x1
    8000254c:	00000097          	auipc	ra,0x0
    80002550:	d9c080e7          	jalr	-612(ra) # 800022e8 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    80002554:	04050263          	beqz	a0,80002598 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    80002558:	00050713          	mv	a4,a0
    //__asm__ volatile("mv a4, %0" :  : "r"((uint64)1));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    8000255c:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    80002560:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    80002564:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    80002568:	01400793          	li	a5,20
    8000256c:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80002570:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002574:	00050513          	mv	a0,a0
    return result;
    80002578:	0005051b          	sext.w	a0,a0
}
    8000257c:	02813083          	ld	ra,40(sp)
    80002580:	02013403          	ld	s0,32(sp)
    80002584:	01813483          	ld	s1,24(sp)
    80002588:	01013903          	ld	s2,16(sp)
    8000258c:	00813983          	ld	s3,8(sp)
    80002590:	03010113          	addi	sp,sp,48
    80002594:	00008067          	ret
        return -1;
    80002598:	fff00513          	li	a0,-1
    8000259c:	fe1ff06f          	j	8000257c <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>

00000000800025a0 <_Z4getcv>:

char getc()
{
    800025a0:	ff010113          	addi	sp,sp,-16
    800025a4:	00813423          	sd	s0,8(sp)
    800025a8:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    800025ac:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    800025b0:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800025b4:	00050513          	mv	a0,a0
    return (char)result;
}
    800025b8:	0ff57513          	andi	a0,a0,255
    800025bc:	00813403          	ld	s0,8(sp)
    800025c0:	01010113          	addi	sp,sp,16
    800025c4:	00008067          	ret

00000000800025c8 <_Z4putcc>:

void putc(char c)
{
    800025c8:	ff010113          	addi	sp,sp,-16
    800025cc:	00813423          	sd	s0,8(sp)
    800025d0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    800025d4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    800025d8:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    800025dc:	00000073          	ecall
}
    800025e0:	00813403          	ld	s0,8(sp)
    800025e4:	01010113          	addi	sp,sp,16
    800025e8:	00008067          	ret

00000000800025ec <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    800025ec:	ff010113          	addi	sp,sp,-16
    800025f0:	00813423          	sd	s0,8(sp)
    800025f4:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    800025f8:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    800025fc:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002600:	00050513          	mv	a0,a0
    return (char)result;
}
    80002604:	0ff57513          	andi	a0,a0,255
    80002608:	00813403          	ld	s0,8(sp)
    8000260c:	01010113          	addi	sp,sp,16
    80002610:	00008067          	ret

0000000080002614 <_Z17thread_delete_pcbP7_thread>:

int thread_delete_pcb(thread_t handle)
{
    80002614:	ff010113          	addi	sp,sp,-16
    80002618:	00813423          	sd	s0,8(sp)
    8000261c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80002620:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    80002624:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    80002628:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000262c:	00050513          	mv	a0,a0
    return (char)result;
}
    80002630:	0ff57513          	andi	a0,a0,255
    80002634:	00813403          	ld	s0,8(sp)
    80002638:	01010113          	addi	sp,sp,16
    8000263c:	00008067          	ret

0000000080002640 <_ZN7_threaddlEPv>:
//

#include "../h/_thread.hpp"
#include "../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    80002640:	ff010113          	addi	sp,sp,-16
    80002644:	00113423          	sd	ra,8(sp)
    80002648:	00813023          	sd	s0,0(sp)
    8000264c:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    80002650:	00000097          	auipc	ra,0x0
    80002654:	fc4080e7          	jalr	-60(ra) # 80002614 <_Z17thread_delete_pcbP7_thread>
    80002658:	00813083          	ld	ra,8(sp)
    8000265c:	00013403          	ld	s0,0(sp)
    80002660:	01010113          	addi	sp,sp,16
    80002664:	00008067          	ret

0000000080002668 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    80002668:	ff010113          	addi	sp,sp,-16
    8000266c:	00113423          	sd	ra,8(sp)
    80002670:	00813023          	sd	s0,0(sp)
    80002674:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80002678:	00002097          	auipc	ra,0x2
    8000267c:	f20080e7          	jalr	-224(ra) # 80004598 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    80002680:	00009797          	auipc	a5,0x9
    80002684:	5e87b783          	ld	a5,1512(a5) # 8000bc68 <_ZN3PCB7runningE>
    80002688:	0287b703          	ld	a4,40(a5)
    8000268c:	0307b503          	ld	a0,48(a5)
    80002690:	000700e7          	jalr	a4

    thread_exit();
    80002694:	00000097          	auipc	ra,0x0
    80002698:	d50080e7          	jalr	-688(ra) # 800023e4 <_Z11thread_exitv>
}
    8000269c:	00813083          	ld	ra,8(sp)
    800026a0:	00013403          	ld	s0,0(sp)
    800026a4:	01010113          	addi	sp,sp,16
    800026a8:	00008067          	ret

00000000800026ac <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800026ac:	ff010113          	addi	sp,sp,-16
    800026b0:	00813423          	sd	s0,8(sp)
    800026b4:	01010413          	addi	s0,sp,16
    })
    800026b8:	00050023          	sb	zero,0(a0) # 1000 <_entry-0x7ffff000>
    800026bc:	00e53c23          	sd	a4,24(a0)
    800026c0:	02053023          	sd	zero,32(a0)
    800026c4:	02b53423          	sd	a1,40(a0)
    800026c8:	02c53823          	sd	a2,48(a0)
    800026cc:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    800026d0:	000017b7          	lui	a5,0x1
    800026d4:	00f686b3          	add	a3,a3,a5
    })
    800026d8:	04d53423          	sd	a3,72(a0)
    800026dc:	00000797          	auipc	a5,0x0
    800026e0:	f8c78793          	addi	a5,a5,-116 # 80002668 <_ZN3PCB6runnerEv>
    800026e4:	04f53823          	sd	a5,80(a0)
    800026e8:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    800026ec:	00053423          	sd	zero,8(a0)
}
    800026f0:	00813403          	ld	s0,8(sp)
    800026f4:	01010113          	addi	sp,sp,16
    800026f8:	00008067          	ret

00000000800026fc <_ZN3PCB5startEv>:
{
    800026fc:	ff010113          	addi	sp,sp,-16
    80002700:	00113423          	sd	ra,8(sp)
    80002704:	00813023          	sd	s0,0(sp)
    80002708:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    8000270c:	00001097          	auipc	ra,0x1
    80002710:	334080e7          	jalr	820(ra) # 80003a40 <_ZN9Scheduler3putEP3PCB>
}
    80002714:	00813083          	ld	ra,8(sp)
    80002718:	00013403          	ld	s0,0(sp)
    8000271c:	01010113          	addi	sp,sp,16
    80002720:	00008067          	ret

0000000080002724 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002724:	fe010113          	addi	sp,sp,-32
    80002728:	00113c23          	sd	ra,24(sp)
    8000272c:	00813823          	sd	s0,16(sp)
    80002730:	00913423          	sd	s1,8(sp)
    80002734:	01213023          	sd	s2,0(sp)
    80002738:	02010413          	addi	s0,sp,32
    PCB* old = running;
    8000273c:	00009497          	auipc	s1,0x9
    80002740:	52c4b483          	ld	s1,1324(s1) # 8000bc68 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80002744:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    80002748:	00100793          	li	a5,1
    8000274c:	04f70a63          	beq	a4,a5,800027a0 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    80002750:	00001097          	auipc	ra,0x1
    80002754:	344080e7          	jalr	836(ra) # 80003a94 <_ZN9Scheduler3getEv>
    80002758:	00009917          	auipc	s2,0x9
    8000275c:	51090913          	addi	s2,s2,1296 # 8000bc68 <_ZN3PCB7runningE>
    80002760:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    80002764:	00100793          	li	a5,1
    80002768:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);

    Riscv::changePrivMode();
    8000276c:	00002097          	auipc	ra,0x2
    80002770:	324080e7          	jalr	804(ra) # 80004a90 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    80002774:	00093583          	ld	a1,0(s2)
    80002778:	04858593          	addi	a1,a1,72
    8000277c:	04848513          	addi	a0,s1,72
    80002780:	fffff097          	auipc	ra,0xfffff
    80002784:	ab8080e7          	jalr	-1352(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80002788:	01813083          	ld	ra,24(sp)
    8000278c:	01013403          	ld	s0,16(sp)
    80002790:	00813483          	ld	s1,8(sp)
    80002794:	00013903          	ld	s2,0(sp)
    80002798:	02010113          	addi	sp,sp,32
    8000279c:	00008067          	ret
        Scheduler::put(old);
    800027a0:	00048513          	mv	a0,s1
    800027a4:	00001097          	auipc	ra,0x1
    800027a8:	29c080e7          	jalr	668(ra) # 80003a40 <_ZN9Scheduler3putEP3PCB>
    800027ac:	fa5ff06f          	j	80002750 <_ZN3PCB8dispatchEv+0x2c>

00000000800027b0 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800027b0:	ff010113          	addi	sp,sp,-16
    800027b4:	00113423          	sd	ra,8(sp)
    800027b8:	00813023          	sd	s0,0(sp)
    800027bc:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::pcbCache);
    800027c0:	00009797          	auipc	a5,0x9
    800027c4:	4507b783          	ld	a5,1104(a5) # 8000bc10 <_GLOBAL_OFFSET_TABLE_+0x90>
    800027c8:	0007b503          	ld	a0,0(a5)
    800027cc:	fffff097          	auipc	ra,0xfffff
    800027d0:	3f0080e7          	jalr	1008(ra) # 80001bbc <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    800027d4:	00813083          	ld	ra,8(sp)
    800027d8:	00013403          	ld	s0,0(sp)
    800027dc:	01010113          	addi	sp,sp,16
    800027e0:	00008067          	ret

00000000800027e4 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    800027e4:	ff010113          	addi	sp,sp,-16
    800027e8:	00113423          	sd	ra,8(sp)
    800027ec:	00813023          	sd	s0,0(sp)
    800027f0:	01010413          	addi	s0,sp,16
    800027f4:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::pcbCache, p);
    800027f8:	00009797          	auipc	a5,0x9
    800027fc:	4187b783          	ld	a5,1048(a5) # 8000bc10 <_GLOBAL_OFFSET_TABLE_+0x90>
    80002800:	0007b503          	ld	a0,0(a5)
    80002804:	fffff097          	auipc	ra,0xfffff
    80002808:	594080e7          	jalr	1428(ra) # 80001d98 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    8000280c:	00813083          	ld	ra,8(sp)
    80002810:	00013403          	ld	s0,0(sp)
    80002814:	01010113          	addi	sp,sp,16
    80002818:	00008067          	ret

000000008000281c <_ZN3PCBD1Ev>:

PCB::~PCB()
    8000281c:	ff010113          	addi	sp,sp,-16
    80002820:	00113423          	sd	ra,8(sp)
    80002824:	00813023          	sd	s0,0(sp)
    80002828:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    8000282c:	03853503          	ld	a0,56(a0)
    80002830:	00003097          	auipc	ra,0x3
    80002834:	9cc080e7          	jalr	-1588(ra) # 800051fc <_ZN15MemoryAllocator5kfreeEPv>
}
    80002838:	00813083          	ld	ra,8(sp)
    8000283c:	00013403          	ld	s0,0(sp)
    80002840:	01010113          	addi	sp,sp,16
    80002844:	00008067          	ret

0000000080002848 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    80002848:	fe010113          	addi	sp,sp,-32
    8000284c:	00113c23          	sd	ra,24(sp)
    80002850:	00813823          	sd	s0,16(sp)
    80002854:	00913423          	sd	s1,8(sp)
    80002858:	01213023          	sd	s2,0(sp)
    8000285c:	02010413          	addi	s0,sp,32
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    80002860:	06000513          	li	a0,96
    80002864:	00000097          	auipc	ra,0x0
    80002868:	f4c080e7          	jalr	-180(ra) # 800027b0 <_ZN3PCBnwEm>
    8000286c:	00050493          	mv	s1,a0
    80002870:	00050e63          	beqz	a0,8000288c <_ZN3PCB10initializeEv+0x44>
    80002874:	00000713          	li	a4,0
    80002878:	00000693          	li	a3,0
    8000287c:	00000613          	li	a2,0
    80002880:	00000593          	li	a1,0
    80002884:	00000097          	auipc	ra,0x0
    80002888:	e28080e7          	jalr	-472(ra) # 800026ac <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    8000288c:	00100793          	li	a5,1
    80002890:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    80002894:	00009797          	auipc	a5,0x9
    80002898:	3c97ba23          	sd	s1,980(a5) # 8000bc68 <_ZN3PCB7runningE>
    8000289c:	00100793          	li	a5,1
    800028a0:	04f4a023          	sw	a5,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
                              //kmalloc(DEFAULT_STACK_SIZE),
                              MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
    800028a4:	00001537          	lui	a0,0x1
    800028a8:	00003097          	auipc	ra,0x3
    800028ac:	8e4080e7          	jalr	-1820(ra) # 8000518c <_ZN15MemoryAllocator7kmallocEm>
    800028b0:	00050913          	mv	s2,a0
                              DEFAULT_TIME_SLICE);
    800028b4:	06000513          	li	a0,96
    800028b8:	00000097          	auipc	ra,0x0
    800028bc:	ef8080e7          	jalr	-264(ra) # 800027b0 <_ZN3PCBnwEm>
    800028c0:	00050493          	mv	s1,a0
    800028c4:	02050063          	beqz	a0,800028e4 <_ZN3PCB10initializeEv+0x9c>
    800028c8:	00200713          	li	a4,2
    800028cc:	00090693          	mv	a3,s2
    800028d0:	00000613          	li	a2,0
    800028d4:	00009597          	auipc	a1,0x9
    800028d8:	3045b583          	ld	a1,772(a1) # 8000bbd8 <_GLOBAL_OFFSET_TABLE_+0x58>
    800028dc:	00000097          	auipc	ra,0x0
    800028e0:	dd0080e7          	jalr	-560(ra) # 800026ac <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
    800028e4:	00009797          	auipc	a5,0x9
    800028e8:	38478793          	addi	a5,a5,900 # 8000bc68 <_ZN3PCB7runningE>
    800028ec:	0097b423          	sd	s1,8(a5)
    PCB::consolePCB->systemThread = true;
    800028f0:	00100713          	li	a4,1
    800028f4:	00e48023          	sb	a4,0(s1)
    PCB::consolePCB->start();
    800028f8:	0087b503          	ld	a0,8(a5)
    800028fc:	00000097          	auipc	ra,0x0
    80002900:	e00080e7          	jalr	-512(ra) # 800026fc <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0,
                           //kmalloc(DEFAULT_STACK_SIZE),
                           MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
    80002904:	00001537          	lui	a0,0x1
    80002908:	00003097          	auipc	ra,0x3
    8000290c:	884080e7          	jalr	-1916(ra) # 8000518c <_ZN15MemoryAllocator7kmallocEm>
    80002910:	00050913          	mv	s2,a0
                           DEFAULT_TIME_SLICE);
    80002914:	06000513          	li	a0,96
    80002918:	00000097          	auipc	ra,0x0
    8000291c:	e98080e7          	jalr	-360(ra) # 800027b0 <_ZN3PCBnwEm>
    80002920:	00050493          	mv	s1,a0
    80002924:	02050063          	beqz	a0,80002944 <_ZN3PCB10initializeEv+0xfc>
    80002928:	00200713          	li	a4,2
    8000292c:	00090693          	mv	a3,s2
    80002930:	00000613          	li	a2,0
    80002934:	00009597          	auipc	a1,0x9
    80002938:	2d45b583          	ld	a1,724(a1) # 8000bc08 <_GLOBAL_OFFSET_TABLE_+0x88>
    8000293c:	00000097          	auipc	ra,0x0
    80002940:	d70080e7          	jalr	-656(ra) # 800026ac <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0,
    80002944:	00009797          	auipc	a5,0x9
    80002948:	3297ba23          	sd	s1,820(a5) # 8000bc78 <_ZN3PCB7userPCBE>
    PCB::userPCB->start();
    8000294c:	00048513          	mv	a0,s1
    80002950:	00000097          	auipc	ra,0x0
    80002954:	dac080e7          	jalr	-596(ra) # 800026fc <_ZN3PCB5startEv>
}
    80002958:	01813083          	ld	ra,24(sp)
    8000295c:	01013403          	ld	s0,16(sp)
    80002960:	00813483          	ld	s1,8(sp)
    80002964:	00013903          	ld	s2,0(sp)
    80002968:	02010113          	addi	sp,sp,32
    8000296c:	00008067          	ret

0000000080002970 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    80002970:	ff010113          	addi	sp,sp,-16
    80002974:	00813423          	sd	s0,8(sp)
    80002978:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    8000297c:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    80002980:	ffd50513          	addi	a0,a0,-3
}
    80002984:	00153513          	seqz	a0,a0
    80002988:	00813403          	ld	s0,8(sp)
    8000298c:	01010113          	addi	sp,sp,16
    80002990:	00008067          	ret

0000000080002994 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    80002994:	ff010113          	addi	sp,sp,-16
    80002998:	00113423          	sd	ra,8(sp)
    8000299c:	00813023          	sd	s0,0(sp)
    800029a0:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800029a4:	00009797          	auipc	a5,0x9
    800029a8:	2c478793          	addi	a5,a5,708 # 8000bc68 <_ZN3PCB7runningE>
    800029ac:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    800029b0:	0007b783          	ld	a5,0(a5)
    800029b4:	00300713          	li	a4,3
    800029b8:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    800029bc:	00000097          	auipc	ra,0x0
    800029c0:	d68080e7          	jalr	-664(ra) # 80002724 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    800029c4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800029c8:	00002097          	auipc	ra,0x2
    800029cc:	090080e7          	jalr	144(ra) # 80004a58 <_ZN5Riscv13w_a0_sscratchEv>
}
    800029d0:	00813083          	ld	ra,8(sp)
    800029d4:	00013403          	ld	s0,0(sp)
    800029d8:	01010113          	addi	sp,sp,16
    800029dc:	00008067          	ret

00000000800029e0 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    800029e0:	ff010113          	addi	sp,sp,-16
    800029e4:	00113423          	sd	ra,8(sp)
    800029e8:	00813023          	sd	s0,0(sp)
    800029ec:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800029f0:	00009797          	auipc	a5,0x9
    800029f4:	2807b823          	sd	zero,656(a5) # 8000bc80 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    800029f8:	00000097          	auipc	ra,0x0
    800029fc:	d2c080e7          	jalr	-724(ra) # 80002724 <_ZN3PCB8dispatchEv>
}
    80002a00:	00813083          	ld	ra,8(sp)
    80002a04:	00013403          	ld	s0,0(sp)
    80002a08:	01010113          	addi	sp,sp,16
    80002a0c:	00008067          	ret

0000000080002a10 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002a10:	ff010113          	addi	sp,sp,-16
    80002a14:	00113423          	sd	ra,8(sp)
    80002a18:	00813023          	sd	s0,0(sp)
    80002a1c:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002a20:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002a24:	00009717          	auipc	a4,0x9
    80002a28:	24470713          	addi	a4,a4,580 # 8000bc68 <_ZN3PCB7runningE>
    80002a2c:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002a30:	00073703          	ld	a4,0(a4)
    80002a34:	00009697          	auipc	a3,0x9
    80002a38:	19c6b683          	ld	a3,412(a3) # 8000bbd0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002a3c:	0006b683          	ld	a3,0(a3)
    80002a40:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002a44:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002a48:	00001097          	auipc	ra,0x1
    80002a4c:	e7c080e7          	jalr	-388(ra) # 800038c4 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002a50:	00000097          	auipc	ra,0x0
    80002a54:	cd4080e7          	jalr	-812(ra) # 80002724 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002a58:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002a5c:	00002097          	auipc	ra,0x2
    80002a60:	ffc080e7          	jalr	-4(ra) # 80004a58 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002a64:	00813083          	ld	ra,8(sp)
    80002a68:	00013403          	ld	s0,0(sp)
    80002a6c:	01010113          	addi	sp,sp,16
    80002a70:	00008067          	ret

0000000080002a74 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002a74:	fd010113          	addi	sp,sp,-48
    80002a78:	02113423          	sd	ra,40(sp)
    80002a7c:	02813023          	sd	s0,32(sp)
    80002a80:	00913c23          	sd	s1,24(sp)
    80002a84:	01213823          	sd	s2,16(sp)
    80002a88:	01313423          	sd	s3,8(sp)
    80002a8c:	01413023          	sd	s4,0(sp)
    80002a90:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002a94:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002a98:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002a9c:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args,
                          //stack_space,
                          (void *) PCB::savedRegA4,
                          DEFAULT_TIME_SLICE);
    80002aa0:	06000513          	li	a0,96
    80002aa4:	00000097          	auipc	ra,0x0
    80002aa8:	d0c080e7          	jalr	-756(ra) # 800027b0 <_ZN3PCBnwEm>
    80002aac:	00050493          	mv	s1,a0
    80002ab0:	02050063          	beqz	a0,80002ad0 <_ZN3PCB19threadCreateHandlerEv+0x5c>
    80002ab4:	00200713          	li	a4,2
    80002ab8:	00009697          	auipc	a3,0x9
    80002abc:	1d06b683          	ld	a3,464(a3) # 8000bc88 <_ZN3PCB10savedRegA4E>
    80002ac0:	000a0613          	mv	a2,s4
    80002ac4:	00098593          	mv	a1,s3
    80002ac8:	00000097          	auipc	ra,0x0
    80002acc:	be4080e7          	jalr	-1052(ra) # 800026ac <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002ad0:	00993023          	sd	s1,0(s2)

    if (newPCB == nullptr) {
    80002ad4:	02048e63          	beqz	s1,80002b10 <_ZN3PCB19threadCreateHandlerEv+0x9c>
        __asm__ volatile("li a0, 0x01");
    }
    else
    {
        newPCB->start();
    80002ad8:	00048513          	mv	a0,s1
    80002adc:	00000097          	auipc	ra,0x0
    80002ae0:	c20080e7          	jalr	-992(ra) # 800026fc <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002ae4:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002ae8:	00002097          	auipc	ra,0x2
    80002aec:	f70080e7          	jalr	-144(ra) # 80004a58 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002af0:	02813083          	ld	ra,40(sp)
    80002af4:	02013403          	ld	s0,32(sp)
    80002af8:	01813483          	ld	s1,24(sp)
    80002afc:	01013903          	ld	s2,16(sp)
    80002b00:	00813983          	ld	s3,8(sp)
    80002b04:	00013a03          	ld	s4,0(sp)
    80002b08:	03010113          	addi	sp,sp,48
    80002b0c:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002b10:	00100513          	li	a0,1
    80002b14:	fd5ff06f          	j	80002ae8 <_ZN3PCB19threadCreateHandlerEv+0x74>

0000000080002b18 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002b18:	ff010113          	addi	sp,sp,-16
    80002b1c:	00113423          	sd	ra,8(sp)
    80002b20:	00813023          	sd	s0,0(sp)
    80002b24:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002b28:	00058513          	mv	a0,a1
    if(pcb != nullptr)
    80002b2c:	02050463          	beqz	a0,80002b54 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002b30:	00000097          	auipc	ra,0x0
    80002b34:	bcc080e7          	jalr	-1076(ra) # 800026fc <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002b38:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x01");
    }
    Riscv::w_a0_sscratch();
    80002b3c:	00002097          	auipc	ra,0x2
    80002b40:	f1c080e7          	jalr	-228(ra) # 80004a58 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002b44:	00813083          	ld	ra,8(sp)
    80002b48:	00013403          	ld	s0,0(sp)
    80002b4c:	01010113          	addi	sp,sp,16
    80002b50:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002b54:	00100513          	li	a0,1
    80002b58:	fe5ff06f          	j	80002b3c <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002b5c <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002b5c:	fd010113          	addi	sp,sp,-48
    80002b60:	02113423          	sd	ra,40(sp)
    80002b64:	02813023          	sd	s0,32(sp)
    80002b68:	00913c23          	sd	s1,24(sp)
    80002b6c:	01213823          	sd	s2,16(sp)
    80002b70:	01313423          	sd	s3,8(sp)
    80002b74:	01413023          	sd	s4,0(sp)
    80002b78:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002b7c:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002b80:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002b84:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args,
                          //stack_space,
                          (void *) PCB::savedRegA4,
                          DEFAULT_TIME_SLICE);
    80002b88:	06000513          	li	a0,96
    80002b8c:	00000097          	auipc	ra,0x0
    80002b90:	c24080e7          	jalr	-988(ra) # 800027b0 <_ZN3PCBnwEm>
    80002b94:	00050493          	mv	s1,a0
    80002b98:	02050063          	beqz	a0,80002bb8 <_ZN3PCB20threadMakePCBHandlerEv+0x5c>
    80002b9c:	00200713          	li	a4,2
    80002ba0:	00009697          	auipc	a3,0x9
    80002ba4:	0e86b683          	ld	a3,232(a3) # 8000bc88 <_ZN3PCB10savedRegA4E>
    80002ba8:	000a0613          	mv	a2,s4
    80002bac:	00098593          	mv	a1,s3
    80002bb0:	00000097          	auipc	ra,0x0
    80002bb4:	afc080e7          	jalr	-1284(ra) # 800026ac <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002bb8:	00993023          	sd	s1,0(s2)

    if (newPCB == nullptr)
    80002bbc:	02048863          	beqz	s1,80002bec <_ZN3PCB20threadMakePCBHandlerEv+0x90>
    {
        __asm__ volatile("li a0, 0x01");
    }
    else
        __asm__ volatile("li a0, 0");
    80002bc0:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002bc4:	00002097          	auipc	ra,0x2
    80002bc8:	e94080e7          	jalr	-364(ra) # 80004a58 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002bcc:	02813083          	ld	ra,40(sp)
    80002bd0:	02013403          	ld	s0,32(sp)
    80002bd4:	01813483          	ld	s1,24(sp)
    80002bd8:	01013903          	ld	s2,16(sp)
    80002bdc:	00813983          	ld	s3,8(sp)
    80002be0:	00013a03          	ld	s4,0(sp)
    80002be4:	03010113          	addi	sp,sp,48
    80002be8:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002bec:	00100513          	li	a0,1
    80002bf0:	fd5ff06f          	j	80002bc4 <_ZN3PCB20threadMakePCBHandlerEv+0x68>

0000000080002bf4 <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    80002bf4:	fe010113          	addi	sp,sp,-32
    80002bf8:	00113c23          	sd	ra,24(sp)
    80002bfc:	00813823          	sd	s0,16(sp)
    80002c00:	00913423          	sd	s1,8(sp)
    80002c04:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002c08:	00058493          	mv	s1,a1
    if(pcb != nullptr)
    80002c0c:	02048e63          	beqz	s1,80002c48 <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80002c10:	00048513          	mv	a0,s1
    80002c14:	00000097          	auipc	ra,0x0
    80002c18:	c08080e7          	jalr	-1016(ra) # 8000281c <_ZN3PCBD1Ev>
    80002c1c:	00048513          	mv	a0,s1
    80002c20:	00000097          	auipc	ra,0x0
    80002c24:	bc4080e7          	jalr	-1084(ra) # 800027e4 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    80002c28:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80002c2c:	00002097          	auipc	ra,0x2
    80002c30:	e2c080e7          	jalr	-468(ra) # 80004a58 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002c34:	01813083          	ld	ra,24(sp)
    80002c38:	01013403          	ld	s0,16(sp)
    80002c3c:	00813483          	ld	s1,8(sp)
    80002c40:	02010113          	addi	sp,sp,32
    80002c44:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80002c48:	00100513          	li	a0,1
    80002c4c:	fe1ff06f          	j	80002c2c <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080002c50 <_Z12getBlockAddrm>:
    addBlocks(buddy, addr, level); //adds free blocks
    buddy->numOfFreeBlocks += (1 << level);
}

size_t getBlockAddr(size_t addr)
{
    80002c50:	ff010113          	addi	sp,sp,-16
    80002c54:	00813423          	sd	s0,8(sp)
    80002c58:	01010413          	addi	s0,sp,16
    size_t mask = ((size_t)-1) << BLOCK_SIZE_POWER_2;
    return addr & mask;
}
    80002c5c:	fffff7b7          	lui	a5,0xfffff
    80002c60:	00f57533          	and	a0,a0,a5
    80002c64:	00813403          	ld	s0,8(sp)
    80002c68:	01010113          	addi	sp,sp,16
    80002c6c:	00008067          	ret

0000000080002c70 <_Z16getNextBlockAddrm>:
size_t getNextBlockAddr(size_t addr)
{
    80002c70:	ff010113          	addi	sp,sp,-16
    80002c74:	00113423          	sd	ra,8(sp)
    80002c78:	00813023          	sd	s0,0(sp)
    80002c7c:	01010413          	addi	s0,sp,16
    size_t currBlock = getBlockAddr(addr);
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	fd0080e7          	jalr	-48(ra) # 80002c50 <_Z12getBlockAddrm>
    return currBlock + BLOCK_SIZE;
}
    80002c88:	000017b7          	lui	a5,0x1
    80002c8c:	00f50533          	add	a0,a0,a5
    80002c90:	00813083          	ld	ra,8(sp)
    80002c94:	00013403          	ld	s0,0(sp)
    80002c98:	01010113          	addi	sp,sp,16
    80002c9c:	00008067          	ret

0000000080002ca0 <_Z12getDeg2Floorm>:

size_t getDeg2Floor(size_t num)
{
    80002ca0:	ff010113          	addi	sp,sp,-16
    80002ca4:	00813423          	sd	s0,8(sp)
    80002ca8:	01010413          	addi	s0,sp,16
    size_t x = 1;
    size_t deg = 0;
    80002cac:	00000713          	li	a4,0
    size_t x = 1;
    80002cb0:	00100793          	li	a5,1
    while(x <= num)
    80002cb4:	00f56863          	bltu	a0,a5,80002cc4 <_Z12getDeg2Floorm+0x24>
    {
        deg++;
    80002cb8:	00170713          	addi	a4,a4,1
        x<<=1;
    80002cbc:	00179793          	slli	a5,a5,0x1
    while(x <= num)
    80002cc0:	ff5ff06f          	j	80002cb4 <_Z12getDeg2Floorm+0x14>
    }
    return deg - 1;
}
    80002cc4:	fff70513          	addi	a0,a4,-1
    80002cc8:	00813403          	ld	s0,8(sp)
    80002ccc:	01010113          	addi	sp,sp,16
    80002cd0:	00008067          	ret

0000000080002cd4 <_Z11getDeg2Ceilm>:

size_t getDeg2Ceil(size_t num)
{
    80002cd4:	ff010113          	addi	sp,sp,-16
    80002cd8:	00813423          	sd	s0,8(sp)
    80002cdc:	01010413          	addi	s0,sp,16
    80002ce0:	00050713          	mv	a4,a0
    size_t x = 1;
    size_t deg = 0;
    80002ce4:	00000513          	li	a0,0
    size_t x = 1;
    80002ce8:	00100793          	li	a5,1
    while(x < num)
    80002cec:	00e7f863          	bgeu	a5,a4,80002cfc <_Z11getDeg2Ceilm+0x28>
    {
        deg++;
    80002cf0:	00150513          	addi	a0,a0,1
        x<<=1;
    80002cf4:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80002cf8:	ff5ff06f          	j	80002cec <_Z11getDeg2Ceilm+0x18>
    }
    return deg;
}
    80002cfc:	00813403          	ld	s0,8(sp)
    80002d00:	01010113          	addi	sp,sp,16
    80002d04:	00008067          	ret

0000000080002d08 <_Z15addBlockToLevelP14buddyAllocatorPvm>:
    addBlockToLevel(buddy, addr, level);
}

//adds free block to level
void addBlockToLevel(buddyAllocator* buddy, void* addr, size_t level)
{
    80002d08:	ff010113          	addi	sp,sp,-16
    80002d0c:	00813423          	sd	s0,8(sp)
    80002d10:	01010413          	addi	s0,sp,16
    buddyBlock* newBlock = (buddyBlock*)addr;
    newBlock->next = nullptr;
    80002d14:	0005b023          	sd	zero,0(a1)
    if(buddy->bucket[level].first == nullptr)
    80002d18:	00260793          	addi	a5,a2,2
    80002d1c:	00479793          	slli	a5,a5,0x4
    80002d20:	00f507b3          	add	a5,a0,a5
    80002d24:	0007b783          	ld	a5,0(a5) # 1000 <_entry-0x7ffff000>
    80002d28:	02078463          	beqz	a5,80002d50 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x48>
    {
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    }
    else
    {
        buddy->bucket[level].last->next = newBlock;
    80002d2c:	00260613          	addi	a2,a2,2
    80002d30:	00461613          	slli	a2,a2,0x4
    80002d34:	00c50633          	add	a2,a0,a2
    80002d38:	00863783          	ld	a5,8(a2)
    80002d3c:	00b7b023          	sd	a1,0(a5)
        buddy->bucket[level].last = newBlock;
    80002d40:	00b63423          	sd	a1,8(a2)
    }
}
    80002d44:	00813403          	ld	s0,8(sp)
    80002d48:	01010113          	addi	sp,sp,16
    80002d4c:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    80002d50:	00260613          	addi	a2,a2,2
    80002d54:	00461613          	slli	a2,a2,0x4
    80002d58:	00c50633          	add	a2,a0,a2
    80002d5c:	00b63423          	sd	a1,8(a2)
    80002d60:	00b63023          	sd	a1,0(a2)
    80002d64:	fe1ff06f          	j	80002d44 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x3c>

0000000080002d68 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>:

size_t getBuddyBlockAddr(buddyAllocator* buddy, void* addr, size_t level)
{
    80002d68:	ff010113          	addi	sp,sp,-16
    80002d6c:	00813423          	sd	s0,8(sp)
    80002d70:	01010413          	addi	s0,sp,16
    size_t diff = BLOCK_SIZE << level;
    80002d74:	000017b7          	lui	a5,0x1
    80002d78:	00c7963b          	sllw	a2,a5,a2
    size_t off = (size_t)addr - (size_t)buddy->startAddr;
    80002d7c:	00853783          	ld	a5,8(a0)
    80002d80:	40f587b3          	sub	a5,a1,a5
    if(diff & off)
    80002d84:	00f677b3          	and	a5,a2,a5
    80002d88:	00078a63          	beqz	a5,80002d9c <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x34>
        return (size_t)addr - diff;
    80002d8c:	40c58533          	sub	a0,a1,a2
    else
        return (size_t)addr + diff;
}
    80002d90:	00813403          	ld	s0,8(sp)
    80002d94:	01010113          	addi	sp,sp,16
    80002d98:	00008067          	ret
        return (size_t)addr + diff;
    80002d9c:	00c58533          	add	a0,a1,a2
    80002da0:	ff1ff06f          	j	80002d90 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x28>

0000000080002da4 <_Z5splitP14buddyAllocatorPvmmb>:
{
    80002da4:	fd010113          	addi	sp,sp,-48
    80002da8:	02113423          	sd	ra,40(sp)
    80002dac:	02813023          	sd	s0,32(sp)
    80002db0:	00913c23          	sd	s1,24(sp)
    80002db4:	01213823          	sd	s2,16(sp)
    80002db8:	01313423          	sd	s3,8(sp)
    80002dbc:	01413023          	sd	s4,0(sp)
    80002dc0:	03010413          	addi	s0,sp,48
    80002dc4:	00050913          	mv	s2,a0
    80002dc8:	00058a13          	mv	s4,a1
    if(!splitMore)
    80002dcc:	06070a63          	beqz	a4,80002e40 <_Z5splitP14buddyAllocatorPvmmb+0x9c>
    80002dd0:	00060993          	mv	s3,a2
        if(currLevel == finalLevel)
    80002dd4:	04c68663          	beq	a3,a2,80002e20 <_Z5splitP14buddyAllocatorPvmmb+0x7c>
        size_t buddyBlock = getBuddyBlockAddr(buddy, addr, currLevel - 1); // currLevel - 1 for next step
    80002dd8:	fff68493          	addi	s1,a3,-1
    80002ddc:	00048613          	mv	a2,s1
    80002de0:	00000097          	auipc	ra,0x0
    80002de4:	f88080e7          	jalr	-120(ra) # 80002d68 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    80002de8:	00050593          	mv	a1,a0
        split(buddy, (void*)buddyBlock, finalLevel, currLevel - 1, false); // continue splitting
    80002dec:	00000713          	li	a4,0
    80002df0:	00048693          	mv	a3,s1
    80002df4:	00098613          	mv	a2,s3
    80002df8:	00090513          	mv	a0,s2
    80002dfc:	00000097          	auipc	ra,0x0
    80002e00:	fa8080e7          	jalr	-88(ra) # 80002da4 <_Z5splitP14buddyAllocatorPvmmb>
        split(buddy, addr, finalLevel, currLevel - 1, true); // continue splitting
    80002e04:	00100713          	li	a4,1
    80002e08:	00048693          	mv	a3,s1
    80002e0c:	00098613          	mv	a2,s3
    80002e10:	000a0593          	mv	a1,s4
    80002e14:	00090513          	mv	a0,s2
    80002e18:	00000097          	auipc	ra,0x0
    80002e1c:	f8c080e7          	jalr	-116(ra) # 80002da4 <_Z5splitP14buddyAllocatorPvmmb>
}
    80002e20:	02813083          	ld	ra,40(sp)
    80002e24:	02013403          	ld	s0,32(sp)
    80002e28:	01813483          	ld	s1,24(sp)
    80002e2c:	01013903          	ld	s2,16(sp)
    80002e30:	00813983          	ld	s3,8(sp)
    80002e34:	00013a03          	ld	s4,0(sp)
    80002e38:	03010113          	addi	sp,sp,48
    80002e3c:	00008067          	ret
        addBlockToLevel(buddy, addr, currLevel);
    80002e40:	00068613          	mv	a2,a3
    80002e44:	00000097          	auipc	ra,0x0
    80002e48:	ec4080e7          	jalr	-316(ra) # 80002d08 <_Z15addBlockToLevelP14buddyAllocatorPvm>
    80002e4c:	fd5ff06f          	j	80002e20 <_Z5splitP14buddyAllocatorPvmmb+0x7c>

0000000080002e50 <_Z11buddy_allocP14buddyAllocatorm>:
{
    80002e50:	fd010113          	addi	sp,sp,-48
    80002e54:	02113423          	sd	ra,40(sp)
    80002e58:	02813023          	sd	s0,32(sp)
    80002e5c:	00913c23          	sd	s1,24(sp)
    80002e60:	01213823          	sd	s2,16(sp)
    80002e64:	01313423          	sd	s3,8(sp)
    80002e68:	03010413          	addi	s0,sp,48
    80002e6c:	00050493          	mv	s1,a0
    size_t level = getDeg2Ceil(numOfBlocks);
    80002e70:	00058513          	mv	a0,a1
    80002e74:	00000097          	auipc	ra,0x0
    80002e78:	e60080e7          	jalr	-416(ra) # 80002cd4 <_Z11getDeg2Ceilm>
    80002e7c:	00050993          	mv	s3,a0
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002e80:	00050693          	mv	a3,a0
    80002e84:	0184b783          	ld	a5,24(s1)
    80002e88:	06d7ee63          	bltu	a5,a3,80002f04 <_Z11buddy_allocP14buddyAllocatorm+0xb4>
        if(buddy->bucket[i].first != nullptr)
    80002e8c:	00268793          	addi	a5,a3,2
    80002e90:	00479793          	slli	a5,a5,0x4
    80002e94:	00f487b3          	add	a5,s1,a5
    80002e98:	0007b903          	ld	s2,0(a5) # 1000 <_entry-0x7ffff000>
    80002e9c:	00091663          	bnez	s2,80002ea8 <_Z11buddy_allocP14buddyAllocatorm+0x58>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002ea0:	00168693          	addi	a3,a3,1
    80002ea4:	fe1ff06f          	j	80002e84 <_Z11buddy_allocP14buddyAllocatorm+0x34>
            buddy->bucket[i].first = ret->next;
    80002ea8:	00093703          	ld	a4,0(s2)
    80002eac:	00268793          	addi	a5,a3,2
    80002eb0:	00479793          	slli	a5,a5,0x4
    80002eb4:	00f487b3          	add	a5,s1,a5
    80002eb8:	00e7b023          	sd	a4,0(a5)
            if(buddy->bucket[i].first == nullptr)
    80002ebc:	02070a63          	beqz	a4,80002ef0 <_Z11buddy_allocP14buddyAllocatorm+0xa0>
            split(buddy, (void*)ret, level, i, true);
    80002ec0:	00100713          	li	a4,1
    80002ec4:	00098613          	mv	a2,s3
    80002ec8:	00090593          	mv	a1,s2
    80002ecc:	00048513          	mv	a0,s1
    80002ed0:	00000097          	auipc	ra,0x0
    80002ed4:	ed4080e7          	jalr	-300(ra) # 80002da4 <_Z5splitP14buddyAllocatorPvmmb>
            buddy->numOfFreeBlocks-= (1 << level);
    80002ed8:	00100513          	li	a0,1
    80002edc:	0135153b          	sllw	a0,a0,s3
    80002ee0:	0104b983          	ld	s3,16(s1)
    80002ee4:	40a989b3          	sub	s3,s3,a0
    80002ee8:	0134b823          	sd	s3,16(s1)
            return ret;
    80002eec:	01c0006f          	j	80002f08 <_Z11buddy_allocP14buddyAllocatorm+0xb8>
                buddy->bucket[i].last = nullptr;
    80002ef0:	00268793          	addi	a5,a3,2
    80002ef4:	00479793          	slli	a5,a5,0x4
    80002ef8:	00f487b3          	add	a5,s1,a5
    80002efc:	0007b423          	sd	zero,8(a5)
    80002f00:	fc1ff06f          	j	80002ec0 <_Z11buddy_allocP14buddyAllocatorm+0x70>
    return nullptr;
    80002f04:	00000913          	li	s2,0
}
    80002f08:	00090513          	mv	a0,s2
    80002f0c:	02813083          	ld	ra,40(sp)
    80002f10:	02013403          	ld	s0,32(sp)
    80002f14:	01813483          	ld	s1,24(sp)
    80002f18:	01013903          	ld	s2,16(sp)
    80002f1c:	00813983          	ld	s3,8(sp)
    80002f20:	03010113          	addi	sp,sp,48
    80002f24:	00008067          	ret

0000000080002f28 <_Z9addBlocksP14buddyAllocatorPvm>:
{
    80002f28:	fd010113          	addi	sp,sp,-48
    80002f2c:	02113423          	sd	ra,40(sp)
    80002f30:	02813023          	sd	s0,32(sp)
    80002f34:	00913c23          	sd	s1,24(sp)
    80002f38:	01213823          	sd	s2,16(sp)
    80002f3c:	01313423          	sd	s3,8(sp)
    80002f40:	03010413          	addi	s0,sp,48
    80002f44:	00050493          	mv	s1,a0
    80002f48:	00058993          	mv	s3,a1
    80002f4c:	00060913          	mv	s2,a2
    if(level == buddy->maxLevel)
    80002f50:	01853783          	ld	a5,24(a0)
    80002f54:	02c78a63          	beq	a5,a2,80002f88 <_Z9addBlocksP14buddyAllocatorPvm+0x60>
    size_t buddyBlockAddr = getBuddyBlockAddr(buddy,addr,level);
    80002f58:	00000097          	auipc	ra,0x0
    80002f5c:	e10080e7          	jalr	-496(ra) # 80002d68 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    buddyBlock* curr = buddy->bucket[level].first;
    80002f60:	00290793          	addi	a5,s2,2
    80002f64:	00479793          	slli	a5,a5,0x4
    80002f68:	00f487b3          	add	a5,s1,a5
    80002f6c:	0007b783          	ld	a5,0(a5)
    buddyBlock* prev = nullptr;
    80002f70:	00000713          	li	a4,0
    while(curr != nullptr)
    80002f74:	0a078e63          	beqz	a5,80003030 <_Z9addBlocksP14buddyAllocatorPvm+0x108>
        if((size_t)curr == buddyBlockAddr)
    80002f78:	00a78e63          	beq	a5,a0,80002f94 <_Z9addBlocksP14buddyAllocatorPvm+0x6c>
        prev = curr;
    80002f7c:	00078713          	mv	a4,a5
        curr = curr->next;
    80002f80:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    80002f84:	ff1ff06f          	j	80002f74 <_Z9addBlocksP14buddyAllocatorPvm+0x4c>
        addBlockToLevel(buddy, addr, level);
    80002f88:	00000097          	auipc	ra,0x0
    80002f8c:	d80080e7          	jalr	-640(ra) # 80002d08 <_Z15addBlockToLevelP14buddyAllocatorPvm>
        return;
    80002f90:	0b40006f          	j	80003044 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
            if(prev != nullptr)
    80002f94:	04070863          	beqz	a4,80002fe4 <_Z9addBlocksP14buddyAllocatorPvm+0xbc>
                prev->next = curr->next;
    80002f98:	0007b683          	ld	a3,0(a5)
    80002f9c:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    80002fa0:	00290693          	addi	a3,s2,2
    80002fa4:	00469693          	slli	a3,a3,0x4
    80002fa8:	00d486b3          	add	a3,s1,a3
    80002fac:	0086b683          	ld	a3,8(a3)
    80002fb0:	02f68063          	beq	a3,a5,80002fd0 <_Z9addBlocksP14buddyAllocatorPvm+0xa8>
            if((size_t)addr < buddyBlockAddr) addBlocks(buddy, addr, level + 1); //merge two chunks
    80002fb4:	06a9f263          	bgeu	s3,a0,80003018 <_Z9addBlocksP14buddyAllocatorPvm+0xf0>
    80002fb8:	00190613          	addi	a2,s2,1
    80002fbc:	00098593          	mv	a1,s3
    80002fc0:	00048513          	mv	a0,s1
    80002fc4:	00000097          	auipc	ra,0x0
    80002fc8:	f64080e7          	jalr	-156(ra) # 80002f28 <_Z9addBlocksP14buddyAllocatorPvm>
    80002fcc:	0780006f          	j	80003044 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
                    buddy->bucket[level].last = prev;
    80002fd0:	00290793          	addi	a5,s2,2
    80002fd4:	00479793          	slli	a5,a5,0x4
    80002fd8:	00f487b3          	add	a5,s1,a5
    80002fdc:	00e7b423          	sd	a4,8(a5)
    80002fe0:	fd5ff06f          	j	80002fb4 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                if(curr->next == nullptr)
    80002fe4:	0007b703          	ld	a4,0(a5)
    80002fe8:	00070c63          	beqz	a4,80003000 <_Z9addBlocksP14buddyAllocatorPvm+0xd8>
                    buddy->bucket[level].first = curr->next;
    80002fec:	00290793          	addi	a5,s2,2
    80002ff0:	00479793          	slli	a5,a5,0x4
    80002ff4:	00f487b3          	add	a5,s1,a5
    80002ff8:	00e7b023          	sd	a4,0(a5)
    80002ffc:	fb9ff06f          	j	80002fb4 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80003000:	00290793          	addi	a5,s2,2
    80003004:	00479793          	slli	a5,a5,0x4
    80003008:	00f487b3          	add	a5,s1,a5
    8000300c:	0007b423          	sd	zero,8(a5)
    80003010:	0007b023          	sd	zero,0(a5)
    80003014:	fa1ff06f          	j	80002fb4 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
            else addBlocks(buddy, (void*)buddyBlockAddr, level + 1); //merge two chunks
    80003018:	00190613          	addi	a2,s2,1
    8000301c:	00050593          	mv	a1,a0
    80003020:	00048513          	mv	a0,s1
    80003024:	00000097          	auipc	ra,0x0
    80003028:	f04080e7          	jalr	-252(ra) # 80002f28 <_Z9addBlocksP14buddyAllocatorPvm>
            return;
    8000302c:	0180006f          	j	80003044 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
    addBlockToLevel(buddy, addr, level);
    80003030:	00090613          	mv	a2,s2
    80003034:	00098593          	mv	a1,s3
    80003038:	00048513          	mv	a0,s1
    8000303c:	00000097          	auipc	ra,0x0
    80003040:	ccc080e7          	jalr	-820(ra) # 80002d08 <_Z15addBlockToLevelP14buddyAllocatorPvm>
}
    80003044:	02813083          	ld	ra,40(sp)
    80003048:	02013403          	ld	s0,32(sp)
    8000304c:	01813483          	ld	s1,24(sp)
    80003050:	01013903          	ld	s2,16(sp)
    80003054:	00813983          	ld	s3,8(sp)
    80003058:	03010113          	addi	sp,sp,48
    8000305c:	00008067          	ret

0000000080003060 <_Z10buddy_initPvm>:
{
    80003060:	fd010113          	addi	sp,sp,-48
    80003064:	02113423          	sd	ra,40(sp)
    80003068:	02813023          	sd	s0,32(sp)
    8000306c:	00913c23          	sd	s1,24(sp)
    80003070:	01213823          	sd	s2,16(sp)
    80003074:	01313423          	sd	s3,8(sp)
    80003078:	03010413          	addi	s0,sp,48
    8000307c:	00058993          	mv	s3,a1
    size_t blockAddr = getBlockAddr((size_t)addr); //alling the address
    80003080:	00050493          	mv	s1,a0
    80003084:	00000097          	auipc	ra,0x0
    80003088:	bcc080e7          	jalr	-1076(ra) # 80002c50 <_Z12getBlockAddrm>
    if((size_t)addr != blockAddr) // if start address not aligned
    8000308c:	00a48a63          	beq	s1,a0,800030a0 <_Z10buddy_initPvm+0x40>
        buddyAddr = getNextBlockAddr(blockAddr);
    80003090:	00000097          	auipc	ra,0x0
    80003094:	be0080e7          	jalr	-1056(ra) # 80002c70 <_Z16getNextBlockAddrm>
    80003098:	00050493          	mv	s1,a0
        numOfBlocks--; //have to discard one block
    8000309c:	fff98993          	addi	s3,s3,-1
    numOfBlocks--; // take one block for buddy metadata
    800030a0:	fff98993          	addi	s3,s3,-1
    buddyAllocator* buddy = (buddyAllocator*)buddyAddr;
    800030a4:	00048913          	mv	s2,s1
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    800030a8:	00048513          	mv	a0,s1
    800030ac:	00000097          	auipc	ra,0x0
    800030b0:	bc4080e7          	jalr	-1084(ra) # 80002c70 <_Z16getNextBlockAddrm>
    800030b4:	00a4b423          	sd	a0,8(s1)
    buddy->numOfBlocks = numOfBlocks;
    800030b8:	0134b023          	sd	s3,0(s1)
    buddy->numOfFreeBlocks = numOfBlocks;
    800030bc:	0134b823          	sd	s3,16(s1)
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    800030c0:	00098513          	mv	a0,s3
    800030c4:	00000097          	auipc	ra,0x0
    800030c8:	bdc080e7          	jalr	-1060(ra) # 80002ca0 <_Z12getDeg2Floorm>
    800030cc:	00a4bc23          	sd	a0,24(s1)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    800030d0:	00000713          	li	a4,0
    800030d4:	02e56063          	bltu	a0,a4,800030f4 <_Z10buddy_initPvm+0x94>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    800030d8:	00270793          	addi	a5,a4,2
    800030dc:	00479793          	slli	a5,a5,0x4
    800030e0:	00f907b3          	add	a5,s2,a5
    800030e4:	0007b423          	sd	zero,8(a5)
    800030e8:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    800030ec:	00170713          	addi	a4,a4,1
    800030f0:	fe5ff06f          	j	800030d4 <_Z10buddy_initPvm+0x74>
    for(size_t i = 0;i < numOfBlocks;i++)
    800030f4:	00000493          	li	s1,0
    800030f8:	0334f463          	bgeu	s1,s3,80003120 <_Z10buddy_initPvm+0xc0>
        addBlocks(buddy, (block*)buddy->startAddr + i, 0);
    800030fc:	00893583          	ld	a1,8(s2)
    80003100:	00c49793          	slli	a5,s1,0xc
    80003104:	00000613          	li	a2,0
    80003108:	00f585b3          	add	a1,a1,a5
    8000310c:	00090513          	mv	a0,s2
    80003110:	00000097          	auipc	ra,0x0
    80003114:	e18080e7          	jalr	-488(ra) # 80002f28 <_Z9addBlocksP14buddyAllocatorPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    80003118:	00148493          	addi	s1,s1,1
    8000311c:	fddff06f          	j	800030f8 <_Z10buddy_initPvm+0x98>
}
    80003120:	00090513          	mv	a0,s2
    80003124:	02813083          	ld	ra,40(sp)
    80003128:	02013403          	ld	s0,32(sp)
    8000312c:	01813483          	ld	s1,24(sp)
    80003130:	01013903          	ld	s2,16(sp)
    80003134:	00813983          	ld	s3,8(sp)
    80003138:	03010113          	addi	sp,sp,48
    8000313c:	00008067          	ret

0000000080003140 <_Z10buddy_freeP14buddyAllocatorPvm>:
{
    80003140:	fd010113          	addi	sp,sp,-48
    80003144:	02113423          	sd	ra,40(sp)
    80003148:	02813023          	sd	s0,32(sp)
    8000314c:	00913c23          	sd	s1,24(sp)
    80003150:	01213823          	sd	s2,16(sp)
    80003154:	01313423          	sd	s3,8(sp)
    80003158:	03010413          	addi	s0,sp,48
    8000315c:	00050493          	mv	s1,a0
    80003160:	00058993          	mv	s3,a1
    size_t level = getDeg2Ceil(numOfBlocks);
    80003164:	00060513          	mv	a0,a2
    80003168:	00000097          	auipc	ra,0x0
    8000316c:	b6c080e7          	jalr	-1172(ra) # 80002cd4 <_Z11getDeg2Ceilm>
    80003170:	00050913          	mv	s2,a0
    addBlocks(buddy, addr, level); //adds free blocks
    80003174:	00050613          	mv	a2,a0
    80003178:	00098593          	mv	a1,s3
    8000317c:	00048513          	mv	a0,s1
    80003180:	00000097          	auipc	ra,0x0
    80003184:	da8080e7          	jalr	-600(ra) # 80002f28 <_Z9addBlocksP14buddyAllocatorPvm>
    buddy->numOfFreeBlocks += (1 << level);
    80003188:	00100513          	li	a0,1
    8000318c:	0125153b          	sllw	a0,a0,s2
    80003190:	0104b903          	ld	s2,16(s1)
    80003194:	00a90933          	add	s2,s2,a0
    80003198:	0124b823          	sd	s2,16(s1)
}
    8000319c:	02813083          	ld	ra,40(sp)
    800031a0:	02013403          	ld	s0,32(sp)
    800031a4:	01813483          	ld	s1,24(sp)
    800031a8:	01013903          	ld	s2,16(sp)
    800031ac:	00813983          	ld	s3,8(sp)
    800031b0:	03010113          	addi	sp,sp,48
    800031b4:	00008067          	ret

00000000800031b8 <_Z14printBuddyInfoP14buddyAllocator>:

void printBuddyInfo(buddyAllocator* buddy)
{
    800031b8:	fd010113          	addi	sp,sp,-48
    800031bc:	02113423          	sd	ra,40(sp)
    800031c0:	02813023          	sd	s0,32(sp)
    800031c4:	00913c23          	sd	s1,24(sp)
    800031c8:	01213823          	sd	s2,16(sp)
    800031cc:	01313423          	sd	s3,8(sp)
    800031d0:	03010413          	addi	s0,sp,48
    800031d4:	00050993          	mv	s3,a0
    KConsole::trapPrintString("Buddy info-------------------------------------------\n");
    800031d8:	00006517          	auipc	a0,0x6
    800031dc:	0a050513          	addi	a0,a0,160 # 80009278 <CONSOLE_STATUS+0x268>
    800031e0:	00000097          	auipc	ra,0x0
    800031e4:	5a8080e7          	jalr	1448(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Buddy starting address ", (size_t)buddy->startAddr, 16);
    800031e8:	01000613          	li	a2,16
    800031ec:	0089b583          	ld	a1,8(s3)
    800031f0:	00006517          	auipc	a0,0x6
    800031f4:	0c050513          	addi	a0,a0,192 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800031f8:	00000097          	auipc	ra,0x0
    800031fc:	668080e7          	jalr	1640(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of blocks ", buddy->numOfBlocks);
    80003200:	00a00613          	li	a2,10
    80003204:	0009b583          	ld	a1,0(s3)
    80003208:	00006517          	auipc	a0,0x6
    8000320c:	0c050513          	addi	a0,a0,192 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003210:	00000097          	auipc	ra,0x0
    80003214:	650080e7          	jalr	1616(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of free blocks ", buddy->numOfFreeBlocks);
    80003218:	00a00613          	li	a2,10
    8000321c:	0109b583          	ld	a1,16(s3)
    80003220:	00006517          	auipc	a0,0x6
    80003224:	0c050513          	addi	a0,a0,192 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003228:	00000097          	auipc	ra,0x0
    8000322c:	638080e7          	jalr	1592(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    for(int i = buddy->maxLevel;i>=0;i--)
    80003230:	0189a903          	lw	s2,24(s3)
    80003234:	0080006f          	j	8000323c <_Z14printBuddyInfoP14buddyAllocator+0x84>
    80003238:	fff9091b          	addiw	s2,s2,-1
    8000323c:	06094663          	bltz	s2,800032a8 <_Z14printBuddyInfoP14buddyAllocator+0xf0>
    {
        KConsole::trapPrintStringInt("Level ",i);
    80003240:	00a00613          	li	a2,10
    80003244:	00090593          	mv	a1,s2
    80003248:	00006517          	auipc	a0,0x6
    8000324c:	0b850513          	addi	a0,a0,184 # 80009300 <CONSOLE_STATUS+0x2f0>
    80003250:	00000097          	auipc	ra,0x0
    80003254:	610080e7          	jalr	1552(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintString("Free blocks on this level\n");
    80003258:	00006517          	auipc	a0,0x6
    8000325c:	0b050513          	addi	a0,a0,176 # 80009308 <CONSOLE_STATUS+0x2f8>
    80003260:	00000097          	auipc	ra,0x0
    80003264:	528080e7          	jalr	1320(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
        buddyBlock* curr = buddy->bucket[i].first;
    80003268:	00290793          	addi	a5,s2,2
    8000326c:	00479793          	slli	a5,a5,0x4
    80003270:	00f987b3          	add	a5,s3,a5
    80003274:	0007b483          	ld	s1,0(a5)
        while(curr != 0)
    80003278:	fc0480e3          	beqz	s1,80003238 <_Z14printBuddyInfoP14buddyAllocator+0x80>
        {
            KConsole::trapPrintInt((size_t)curr, 16);
    8000327c:	00000613          	li	a2,0
    80003280:	01000593          	li	a1,16
    80003284:	00048513          	mv	a0,s1
    80003288:	00000097          	auipc	ra,0x0
    8000328c:	544080e7          	jalr	1348(ra) # 800037cc <_ZN8KConsole12trapPrintIntEmii>
            KConsole::trapPrintString("\n");
    80003290:	00006517          	auipc	a0,0x6
    80003294:	ef050513          	addi	a0,a0,-272 # 80009180 <CONSOLE_STATUS+0x170>
    80003298:	00000097          	auipc	ra,0x0
    8000329c:	4f0080e7          	jalr	1264(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
            curr = curr->next;
    800032a0:	0004b483          	ld	s1,0(s1)
        while(curr != 0)
    800032a4:	fd5ff06f          	j	80003278 <_Z14printBuddyInfoP14buddyAllocator+0xc0>
        }
    }
    KConsole::trapPrintString("End of buddy info-------------------------------------------\n");
    800032a8:	00006517          	auipc	a0,0x6
    800032ac:	08050513          	addi	a0,a0,128 # 80009328 <CONSOLE_STATUS+0x318>
    800032b0:	00000097          	auipc	ra,0x0
    800032b4:	4d8080e7          	jalr	1240(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    800032b8:	02813083          	ld	ra,40(sp)
    800032bc:	02013403          	ld	s0,32(sp)
    800032c0:	01813483          	ld	s1,24(sp)
    800032c4:	01013903          	ld	s2,16(sp)
    800032c8:	00813983          	ld	s3,8(sp)
    800032cc:	03010113          	addi	sp,sp,48
    800032d0:	00008067          	ret

00000000800032d4 <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    800032d4:	fe010113          	addi	sp,sp,-32
    800032d8:	00113c23          	sd	ra,24(sp)
    800032dc:	00813823          	sd	s0,16(sp)
    800032e0:	00913423          	sd	s1,8(sp)
    800032e4:	01213023          	sd	s2,0(sp)
    800032e8:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    800032ec:	01800513          	li	a0,24
    800032f0:	00002097          	auipc	ra,0x2
    800032f4:	6e8080e7          	jalr	1768(ra) # 800059d8 <_ZN10KSemaphorenwEm>
    800032f8:	00050493          	mv	s1,a0
    800032fc:	00050863          	beqz	a0,8000330c <_ZN8KConsole10initializeEv+0x38>
    80003300:	00000593          	li	a1,0
    80003304:	00002097          	auipc	ra,0x2
    80003308:	470080e7          	jalr	1136(ra) # 80005774 <_ZN10KSemaphoreC1Ei>
    8000330c:	00009797          	auipc	a5,0x9
    80003310:	9897b223          	sd	s1,-1660(a5) # 8000bc90 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80003314:	01800513          	li	a0,24
    80003318:	00002097          	auipc	ra,0x2
    8000331c:	6c0080e7          	jalr	1728(ra) # 800059d8 <_ZN10KSemaphorenwEm>
    80003320:	00050493          	mv	s1,a0
    80003324:	00050863          	beqz	a0,80003334 <_ZN8KConsole10initializeEv+0x60>
    80003328:	00000593          	li	a1,0
    8000332c:	00002097          	auipc	ra,0x2
    80003330:	448080e7          	jalr	1096(ra) # 80005774 <_ZN10KSemaphoreC1Ei>
    80003334:	00009797          	auipc	a5,0x9
    80003338:	9697b223          	sd	s1,-1692(a5) # 8000bc98 <_ZN8KConsole19hasCharactersOutputE>
}
    8000333c:	01813083          	ld	ra,24(sp)
    80003340:	01013403          	ld	s0,16(sp)
    80003344:	00813483          	ld	s1,8(sp)
    80003348:	00013903          	ld	s2,0(sp)
    8000334c:	02010113          	addi	sp,sp,32
    80003350:	00008067          	ret
    80003354:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80003358:	00048513          	mv	a0,s1
    8000335c:	00002097          	auipc	ra,0x2
    80003360:	72c080e7          	jalr	1836(ra) # 80005a88 <_ZN10KSemaphoredlEPv>
    80003364:	00090513          	mv	a0,s2
    80003368:	00012097          	auipc	ra,0x12
    8000336c:	ab0080e7          	jalr	-1360(ra) # 80014e18 <_Unwind_Resume>
    80003370:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80003374:	00048513          	mv	a0,s1
    80003378:	00002097          	auipc	ra,0x2
    8000337c:	710080e7          	jalr	1808(ra) # 80005a88 <_ZN10KSemaphoredlEPv>
    80003380:	00090513          	mv	a0,s2
    80003384:	00012097          	auipc	ra,0x12
    80003388:	a94080e7          	jalr	-1388(ra) # 80014e18 <_Unwind_Resume>

000000008000338c <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    8000338c:	00009697          	auipc	a3,0x9
    80003390:	90468693          	addi	a3,a3,-1788 # 8000bc90 <_ZN8KConsole18hasCharactersInputE>
    80003394:	0106b603          	ld	a2,16(a3)
    80003398:	00160793          	addi	a5,a2,1
    8000339c:	00004737          	lui	a4,0x4
    800033a0:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    800033a4:	00e7f7b3          	and	a5,a5,a4
    800033a8:	0186b703          	ld	a4,24(a3)
    800033ac:	04e78263          	beq	a5,a4,800033f0 <_ZN8KConsole17putCharacterInputEc+0x64>
{
    800033b0:	ff010113          	addi	sp,sp,-16
    800033b4:	00113423          	sd	ra,8(sp)
    800033b8:	00813023          	sd	s0,0(sp)
    800033bc:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    800033c0:	0000d717          	auipc	a4,0xd
    800033c4:	91070713          	addi	a4,a4,-1776 # 8000fcd0 <_ZN8KConsole11inputBufferE>
    800033c8:	00c70633          	add	a2,a4,a2
    800033cc:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    800033d0:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    800033d4:	0006b503          	ld	a0,0(a3)
    800033d8:	00002097          	auipc	ra,0x2
    800033dc:	5b8080e7          	jalr	1464(ra) # 80005990 <_ZN10KSemaphore6signalEv>
}
    800033e0:	00813083          	ld	ra,8(sp)
    800033e4:	00013403          	ld	s0,0(sp)
    800033e8:	01010113          	addi	sp,sp,16
    800033ec:	00008067          	ret
    800033f0:	00008067          	ret

00000000800033f4 <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    800033f4:	00008797          	auipc	a5,0x8
    800033f8:	79c7b783          	ld	a5,1948(a5) # 8000bb90 <_GLOBAL_OFFSET_TABLE_+0x10>
    800033fc:	0007b783          	ld	a5,0(a5)
    80003400:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    80003404:	0017f793          	andi	a5,a5,1
    80003408:	02078063          	beqz	a5,80003428 <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    8000340c:	00008797          	auipc	a5,0x8
    80003410:	7ac7b783          	ld	a5,1964(a5) # 8000bbb8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003414:	0007b783          	ld	a5,0(a5)
    80003418:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    8000341c:	00009797          	auipc	a5,0x9
    80003420:	8947b783          	ld	a5,-1900(a5) # 8000bcb0 <_ZN8KConsole11pendingGetcE>
    80003424:	00079463          	bnez	a5,8000342c <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    80003428:	00008067          	ret
{
    8000342c:	ff010113          	addi	sp,sp,-16
    80003430:	00113423          	sd	ra,8(sp)
    80003434:	00813023          	sd	s0,0(sp)
    80003438:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    8000343c:	fff78793          	addi	a5,a5,-1
    80003440:	00009717          	auipc	a4,0x9
    80003444:	86f73823          	sd	a5,-1936(a4) # 8000bcb0 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    80003448:	00000097          	auipc	ra,0x0
    8000344c:	f44080e7          	jalr	-188(ra) # 8000338c <_ZN8KConsole17putCharacterInputEc>
}
    80003450:	00813083          	ld	ra,8(sp)
    80003454:	00013403          	ld	s0,0(sp)
    80003458:	01010113          	addi	sp,sp,16
    8000345c:	00008067          	ret

0000000080003460 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80003460:	fe010113          	addi	sp,sp,-32
    80003464:	00113c23          	sd	ra,24(sp)
    80003468:	00813823          	sd	s0,16(sp)
    8000346c:	00913423          	sd	s1,8(sp)
    80003470:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80003474:	00009497          	auipc	s1,0x9
    80003478:	81c48493          	addi	s1,s1,-2020 # 8000bc90 <_ZN8KConsole18hasCharactersInputE>
    8000347c:	0004b503          	ld	a0,0(s1)
    80003480:	00002097          	auipc	ra,0x2
    80003484:	398080e7          	jalr	920(ra) # 80005818 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80003488:	0184b783          	ld	a5,24(s1)
    8000348c:	0104b703          	ld	a4,16(s1)
    80003490:	04e78063          	beq	a5,a4,800034d0 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80003494:	0000d717          	auipc	a4,0xd
    80003498:	83c70713          	addi	a4,a4,-1988 # 8000fcd0 <_ZN8KConsole11inputBufferE>
    8000349c:	00f70733          	add	a4,a4,a5
    800034a0:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    800034a4:	00178793          	addi	a5,a5,1
    800034a8:	00004737          	lui	a4,0x4
    800034ac:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    800034b0:	00e7f7b3          	and	a5,a5,a4
    800034b4:	00008717          	auipc	a4,0x8
    800034b8:	7ef73a23          	sd	a5,2036(a4) # 8000bca8 <_ZN8KConsole9inputHeadE>
    return c;
}
    800034bc:	01813083          	ld	ra,24(sp)
    800034c0:	01013403          	ld	s0,16(sp)
    800034c4:	00813483          	ld	s1,8(sp)
    800034c8:	02010113          	addi	sp,sp,32
    800034cc:	00008067          	ret
        return -1;
    800034d0:	0ff00513          	li	a0,255
    800034d4:	fe9ff06f          	j	800034bc <_ZN8KConsole17getCharacterInputEv+0x5c>

00000000800034d8 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    800034d8:	00008697          	auipc	a3,0x8
    800034dc:	7b868693          	addi	a3,a3,1976 # 8000bc90 <_ZN8KConsole18hasCharactersInputE>
    800034e0:	0286b603          	ld	a2,40(a3)
    800034e4:	00160793          	addi	a5,a2,1
    800034e8:	00004737          	lui	a4,0x4
    800034ec:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    800034f0:	00e7f7b3          	and	a5,a5,a4
    800034f4:	0306b703          	ld	a4,48(a3)
    800034f8:	04e78a63          	beq	a5,a4,8000354c <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    800034fc:	ff010113          	addi	sp,sp,-16
    80003500:	00113423          	sd	ra,8(sp)
    80003504:	00813023          	sd	s0,0(sp)
    80003508:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    8000350c:	00068713          	mv	a4,a3
    80003510:	0386b683          	ld	a3,56(a3)
    80003514:	00168693          	addi	a3,a3,1
    80003518:	02d73c23          	sd	a3,56(a4)
    outputBuffer[outputTail] = c;
    8000351c:	00008697          	auipc	a3,0x8
    80003520:	7b468693          	addi	a3,a3,1972 # 8000bcd0 <_ZN8KConsole12outputBufferE>
    80003524:	00c68633          	add	a2,a3,a2
    80003528:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    8000352c:	02f73423          	sd	a5,40(a4)
    hasCharactersOutput->signal();
    80003530:	00873503          	ld	a0,8(a4)
    80003534:	00002097          	auipc	ra,0x2
    80003538:	45c080e7          	jalr	1116(ra) # 80005990 <_ZN10KSemaphore6signalEv>
}
    8000353c:	00813083          	ld	ra,8(sp)
    80003540:	00013403          	ld	s0,0(sp)
    80003544:	01010113          	addi	sp,sp,16
    80003548:	00008067          	ret
    8000354c:	00008067          	ret

0000000080003550 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80003550:	fe010113          	addi	sp,sp,-32
    80003554:	00113c23          	sd	ra,24(sp)
    80003558:	00813823          	sd	s0,16(sp)
    8000355c:	00913423          	sd	s1,8(sp)
    80003560:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80003564:	00008497          	auipc	s1,0x8
    80003568:	72c48493          	addi	s1,s1,1836 # 8000bc90 <_ZN8KConsole18hasCharactersInputE>
    8000356c:	0084b503          	ld	a0,8(s1)
    80003570:	00002097          	auipc	ra,0x2
    80003574:	2a8080e7          	jalr	680(ra) # 80005818 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80003578:	0304b783          	ld	a5,48(s1)
    8000357c:	0284b703          	ld	a4,40(s1)
    80003580:	04e78063          	beq	a5,a4,800035c0 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;
    char c = outputBuffer[outputHead];
    80003584:	00008717          	auipc	a4,0x8
    80003588:	74c70713          	addi	a4,a4,1868 # 8000bcd0 <_ZN8KConsole12outputBufferE>
    8000358c:	00f70733          	add	a4,a4,a5
    80003590:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    80003594:	00178793          	addi	a5,a5,1
    80003598:	00004737          	lui	a4,0x4
    8000359c:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    800035a0:	00e7f7b3          	and	a5,a5,a4
    800035a4:	00008717          	auipc	a4,0x8
    800035a8:	70f73e23          	sd	a5,1820(a4) # 8000bcc0 <_ZN8KConsole10outputHeadE>
    return c;
}
    800035ac:	01813083          	ld	ra,24(sp)
    800035b0:	01013403          	ld	s0,16(sp)
    800035b4:	00813483          	ld	s1,8(sp)
    800035b8:	02010113          	addi	sp,sp,32
    800035bc:	00008067          	ret
        return -1;
    800035c0:	0ff00513          	li	a0,255
    800035c4:	fe9ff06f          	j	800035ac <_ZN8KConsole18getCharacterOutputEv+0x5c>

00000000800035c8 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    800035c8:	ff010113          	addi	sp,sp,-16
    800035cc:	00113423          	sd	ra,8(sp)
    800035d0:	00813023          	sd	s0,0(sp)
    800035d4:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    800035d8:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    800035dc:	0ff57513          	andi	a0,a0,255
    800035e0:	00000097          	auipc	ra,0x0
    800035e4:	ef8080e7          	jalr	-264(ra) # 800034d8 <_ZN8KConsole18putCharacterOutputEc>
}
    800035e8:	00813083          	ld	ra,8(sp)
    800035ec:	00013403          	ld	s0,0(sp)
    800035f0:	01010113          	addi	sp,sp,16
    800035f4:	00008067          	ret

00000000800035f8 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    800035f8:	fe010113          	addi	sp,sp,-32
    800035fc:	00113c23          	sd	ra,24(sp)
    80003600:	00813823          	sd	s0,16(sp)
    80003604:	00913423          	sd	s1,8(sp)
    80003608:	02010413          	addi	s0,sp,32
    pendingGetc++;
    8000360c:	00008717          	auipc	a4,0x8
    80003610:	68470713          	addi	a4,a4,1668 # 8000bc90 <_ZN8KConsole18hasCharactersInputE>
    80003614:	02073783          	ld	a5,32(a4)
    80003618:	00178793          	addi	a5,a5,1
    8000361c:	02f73023          	sd	a5,32(a4)
    char ch;
    ch = getCharacterInput();
    80003620:	00000097          	auipc	ra,0x0
    80003624:	e40080e7          	jalr	-448(ra) # 80003460 <_ZN8KConsole17getCharacterInputEv>
    80003628:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    8000362c:	01b00793          	li	a5,27
    80003630:	02f51663          	bne	a0,a5,8000365c <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    80003634:	00d00793          	li	a5,13
    80003638:	02f48863          	beq	s1,a5,80003668 <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    8000363c:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    80003640:	00001097          	auipc	ra,0x1
    80003644:	418080e7          	jalr	1048(ra) # 80004a58 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003648:	01813083          	ld	ra,24(sp)
    8000364c:	01013403          	ld	s0,16(sp)
    80003650:	00813483          	ld	s1,8(sp)
    80003654:	02010113          	addi	sp,sp,32
    80003658:	00008067          	ret
        putCharacterOutput(ch);
    8000365c:	00000097          	auipc	ra,0x0
    80003660:	e7c080e7          	jalr	-388(ra) # 800034d8 <_ZN8KConsole18putCharacterOutputEc>
    80003664:	fd1ff06f          	j	80003634 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    80003668:	00d00513          	li	a0,13
    8000366c:	00000097          	auipc	ra,0x0
    80003670:	e6c080e7          	jalr	-404(ra) # 800034d8 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    80003674:	00a00513          	li	a0,10
    80003678:	00000097          	auipc	ra,0x0
    8000367c:	e60080e7          	jalr	-416(ra) # 800034d8 <_ZN8KConsole18putCharacterOutputEc>
    80003680:	fbdff06f          	j	8000363c <_ZN8KConsole11getcHandlerEv+0x44>

0000000080003684 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    80003684:	ff010113          	addi	sp,sp,-16
    80003688:	00813423          	sd	s0,8(sp)
    8000368c:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80003690:	00008517          	auipc	a0,0x8
    80003694:	63853503          	ld	a0,1592(a0) # 8000bcc8 <_ZN8KConsole11pendingPutcE>
    80003698:	00153513          	seqz	a0,a0
    8000369c:	00813403          	ld	s0,8(sp)
    800036a0:	01010113          	addi	sp,sp,16
    800036a4:	00008067          	ret

00000000800036a8 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    800036a8:	fe010113          	addi	sp,sp,-32
    800036ac:	00113c23          	sd	ra,24(sp)
    800036b0:	00813823          	sd	s0,16(sp)
    800036b4:	02010413          	addi	s0,sp,32
    800036b8:	0180006f          	j	800036d0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit();
    800036bc:	fffff097          	auipc	ra,0xfffff
    800036c0:	d28080e7          	jalr	-728(ra) # 800023e4 <_Z11thread_exitv>
    800036c4:	0340006f          	j	800036f8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch();
    800036c8:	fffff097          	auipc	ra,0xfffff
    800036cc:	cfc080e7          	jalr	-772(ra) # 800023c4 <_Z15thread_dispatchv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    800036d0:	00008797          	auipc	a5,0x8
    800036d4:	5207b783          	ld	a5,1312(a5) # 8000bbf0 <_GLOBAL_OFFSET_TABLE_+0x70>
    800036d8:	0007c783          	lbu	a5,0(a5)
    800036dc:	00078e63          	beqz	a5,800036f8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800036e0:	00000097          	auipc	ra,0x0
    800036e4:	fa4080e7          	jalr	-92(ra) # 80003684 <_ZN8KConsole17outputBufferEmptyEv>
    800036e8:	00050863          	beqz	a0,800036f8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800036ec:	00008797          	auipc	a5,0x8
    800036f0:	5c47b783          	ld	a5,1476(a5) # 8000bcb0 <_ZN8KConsole11pendingGetcE>
    800036f4:	fc0784e3          	beqz	a5,800036bc <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    800036f8:	00008797          	auipc	a5,0x8
    800036fc:	4987b783          	ld	a5,1176(a5) # 8000bb90 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003700:	0007b783          	ld	a5,0(a5)
    80003704:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    80003708:	0207f793          	andi	a5,a5,32
    8000370c:	fa078ee3          	beqz	a5,800036c8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    80003710:	00008797          	auipc	a5,0x8
    80003714:	5b87b783          	ld	a5,1464(a5) # 8000bcc8 <_ZN8KConsole11pendingPutcE>
    80003718:	fa0788e3          	beqz	a5,800036c8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    8000371c:	fffff097          	auipc	ra,0xfffff
    80003720:	ed0080e7          	jalr	-304(ra) # 800025ec <_Z20sysCallGetCharOutputv>
    80003724:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80003728:	00008717          	auipc	a4,0x8
    8000372c:	56870713          	addi	a4,a4,1384 # 8000bc90 <_ZN8KConsole18hasCharactersInputE>
    80003730:	03873783          	ld	a5,56(a4)
    80003734:	fff78793          	addi	a5,a5,-1
    80003738:	02f73c23          	sd	a5,56(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    8000373c:	00008797          	auipc	a5,0x8
    80003740:	44c7b783          	ld	a5,1100(a5) # 8000bb88 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003744:	0007b783          	ld	a5,0(a5)
    80003748:	fef44703          	lbu	a4,-17(s0)
    8000374c:	00e78023          	sb	a4,0(a5)
    80003750:	f81ff06f          	j	800036d0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

0000000080003754 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    80003754:	ff010113          	addi	sp,sp,-16
    80003758:	00113423          	sd	ra,8(sp)
    8000375c:	00813023          	sd	s0,0(sp)
    80003760:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    80003764:	00000097          	auipc	ra,0x0
    80003768:	dec080e7          	jalr	-532(ra) # 80003550 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    8000376c:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003770:	00001097          	auipc	ra,0x1
    80003774:	2e8080e7          	jalr	744(ra) # 80004a58 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003778:	00813083          	ld	ra,8(sp)
    8000377c:	00013403          	ld	s0,0(sp)
    80003780:	01010113          	addi	sp,sp,16
    80003784:	00008067          	ret

0000000080003788 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    80003788:	fe010113          	addi	sp,sp,-32
    8000378c:	00113c23          	sd	ra,24(sp)
    80003790:	00813823          	sd	s0,16(sp)
    80003794:	00913423          	sd	s1,8(sp)
    80003798:	02010413          	addi	s0,sp,32
    8000379c:	00050493          	mv	s1,a0
    while (*string != '\0')
    800037a0:	0004c503          	lbu	a0,0(s1)
    800037a4:	00050a63          	beqz	a0,800037b8 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    800037a8:	00000097          	auipc	ra,0x0
    800037ac:	d30080e7          	jalr	-720(ra) # 800034d8 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    800037b0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800037b4:	fedff06f          	j	800037a0 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    800037b8:	01813083          	ld	ra,24(sp)
    800037bc:	01013403          	ld	s0,16(sp)
    800037c0:	00813483          	ld	s1,8(sp)
    800037c4:	02010113          	addi	sp,sp,32
    800037c8:	00008067          	ret

00000000800037cc <_ZN8KConsole12trapPrintIntEmii>:

void KConsole::trapPrintInt(size_t xx, int base, int sgn)
{
    800037cc:	fb010113          	addi	sp,sp,-80
    800037d0:	04113423          	sd	ra,72(sp)
    800037d4:	04813023          	sd	s0,64(sp)
    800037d8:	02913c23          	sd	s1,56(sp)
    800037dc:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    800037e0:	00006797          	auipc	a5,0x6
    800037e4:	b8878793          	addi	a5,a5,-1144 # 80009368 <CONSOLE_STATUS+0x358>
    800037e8:	0007b703          	ld	a4,0(a5)
    800037ec:	fce43423          	sd	a4,-56(s0)
    800037f0:	0087b703          	ld	a4,8(a5)
    800037f4:	fce43823          	sd	a4,-48(s0)
    800037f8:	0107c783          	lbu	a5,16(a5)
    800037fc:	fcf40c23          	sb	a5,-40(s0)
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    80003800:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80003804:	02b57733          	remu	a4,a0,a1
    80003808:	fe040693          	addi	a3,s0,-32
    8000380c:	00e68733          	add	a4,a3,a4
    80003810:	fe874703          	lbu	a4,-24(a4)
    80003814:	009687b3          	add	a5,a3,s1
    80003818:	0014849b          	addiw	s1,s1,1
    8000381c:	fce78c23          	sb	a4,-40(a5)
    }while((x /= base) != 0);
    80003820:	00050793          	mv	a5,a0
    80003824:	02b55533          	divu	a0,a0,a1
    80003828:	fcb7fee3          	bgeu	a5,a1,80003804 <_ZN8KConsole12trapPrintIntEmii+0x38>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    8000382c:	fff4849b          	addiw	s1,s1,-1
    80003830:	0004ce63          	bltz	s1,8000384c <_ZN8KConsole12trapPrintIntEmii+0x80>
        KConsole::putCharacterOutput(buf[i]);
    80003834:	fe040793          	addi	a5,s0,-32
    80003838:	009787b3          	add	a5,a5,s1
    8000383c:	fd87c503          	lbu	a0,-40(a5)
    80003840:	00000097          	auipc	ra,0x0
    80003844:	c98080e7          	jalr	-872(ra) # 800034d8 <_ZN8KConsole18putCharacterOutputEc>
    80003848:	fe5ff06f          	j	8000382c <_ZN8KConsole12trapPrintIntEmii+0x60>
}
    8000384c:	04813083          	ld	ra,72(sp)
    80003850:	04013403          	ld	s0,64(sp)
    80003854:	03813483          	ld	s1,56(sp)
    80003858:	05010113          	addi	sp,sp,80
    8000385c:	00008067          	ret

0000000080003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>:

void KConsole::trapPrintStringInt(const char *string, size_t xx, int base)
{
    80003860:	fe010113          	addi	sp,sp,-32
    80003864:	00113c23          	sd	ra,24(sp)
    80003868:	00813823          	sd	s0,16(sp)
    8000386c:	00913423          	sd	s1,8(sp)
    80003870:	01213023          	sd	s2,0(sp)
    80003874:	02010413          	addi	s0,sp,32
    80003878:	00058493          	mv	s1,a1
    8000387c:	00060913          	mv	s2,a2
    trapPrintString(string);
    80003880:	00000097          	auipc	ra,0x0
    80003884:	f08080e7          	jalr	-248(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    trapPrintInt(xx,base);
    80003888:	00000613          	li	a2,0
    8000388c:	00090593          	mv	a1,s2
    80003890:	00048513          	mv	a0,s1
    80003894:	00000097          	auipc	ra,0x0
    80003898:	f38080e7          	jalr	-200(ra) # 800037cc <_ZN8KConsole12trapPrintIntEmii>
    trapPrintString("\n");
    8000389c:	00006517          	auipc	a0,0x6
    800038a0:	8e450513          	addi	a0,a0,-1820 # 80009180 <CONSOLE_STATUS+0x170>
    800038a4:	00000097          	auipc	ra,0x0
    800038a8:	ee4080e7          	jalr	-284(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
}
    800038ac:	01813083          	ld	ra,24(sp)
    800038b0:	01013403          	ld	s0,16(sp)
    800038b4:	00813483          	ld	s1,8(sp)
    800038b8:	00013903          	ld	s2,0(sp)
    800038bc:	02010113          	addi	sp,sp,32
    800038c0:	00008067          	ret

00000000800038c4 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    800038c4:	ff010113          	addi	sp,sp,-16
    800038c8:	00813423          	sd	s0,8(sp)
    800038cc:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    800038d0:	00008797          	auipc	a5,0x8
    800038d4:	3287b783          	ld	a5,808(a5) # 8000bbf8 <_GLOBAL_OFFSET_TABLE_+0x78>
    800038d8:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    800038dc:	00500793          	li	a5,5
    800038e0:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    800038e4:	00010797          	auipc	a5,0x10
    800038e8:	3ec7b783          	ld	a5,1004(a5) # 80013cd0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    800038ec:	00000593          	li	a1,0
    while(curr != 0)
    800038f0:	02078063          	beqz	a5,80003910 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    800038f4:	02063683          	ld	a3,32(a2)
    800038f8:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    800038fc:	00e6e863          	bltu	a3,a4,8000390c <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80003900:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003904:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003908:	fe9ff06f          	j	800038f0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    8000390c:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80003910:	00058a63          	beqz	a1,80003924 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80003914:	00c5b423          	sd	a2,8(a1)
}
    80003918:	00813403          	ld	s0,8(sp)
    8000391c:	01010113          	addi	sp,sp,16
    80003920:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80003924:	00010797          	auipc	a5,0x10
    80003928:	3ac7b623          	sd	a2,940(a5) # 80013cd0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    8000392c:	fedff06f          	j	80003918 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

0000000080003930 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    80003930:	00010517          	auipc	a0,0x10
    80003934:	3a053503          	ld	a0,928(a0) # 80013cd0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80003938:	06050e63          	beqz	a0,800039b4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    8000393c:	06050c63          	beqz	a0,800039b4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80003940:	02053783          	ld	a5,32(a0)
    80003944:	00008717          	auipc	a4,0x8
    80003948:	28c73703          	ld	a4,652(a4) # 8000bbd0 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000394c:	00073703          	ld	a4,0(a4)
    80003950:	06f76263          	bltu	a4,a5,800039b4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    80003954:	fe010113          	addi	sp,sp,-32
    80003958:	00113c23          	sd	ra,24(sp)
    8000395c:	00813823          	sd	s0,16(sp)
    80003960:	00913423          	sd	s1,8(sp)
    80003964:	02010413          	addi	s0,sp,32
    80003968:	0180006f          	j	80003980 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    8000396c:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003970:	00008717          	auipc	a4,0x8
    80003974:	26073703          	ld	a4,608(a4) # 8000bbd0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003978:	00073703          	ld	a4,0(a4)
    8000397c:	02f76263          	bltu	a4,a5,800039a0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    80003980:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80003984:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    80003988:	00000097          	auipc	ra,0x0
    8000398c:	0b8080e7          	jalr	184(ra) # 80003a40 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    80003990:	00010797          	auipc	a5,0x10
    80003994:	3497b023          	sd	s1,832(a5) # 80013cd0 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    80003998:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    8000399c:	fc0498e3          	bnez	s1,8000396c <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    800039a0:	01813083          	ld	ra,24(sp)
    800039a4:	01013403          	ld	s0,16(sp)
    800039a8:	00813483          	ld	s1,8(sp)
    800039ac:	02010113          	addi	sp,sp,32
    800039b0:	00008067          	ret
    800039b4:	00008067          	ret

00000000800039b8 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    800039b8:	ff010113          	addi	sp,sp,-16
    800039bc:	00113423          	sd	ra,8(sp)
    800039c0:	00813023          	sd	s0,0(sp)
    800039c4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    800039c8:	00001097          	auipc	ra,0x1
    800039cc:	7c4080e7          	jalr	1988(ra) # 8000518c <_ZN15MemoryAllocator7kmallocEm>
}
    800039d0:	00813083          	ld	ra,8(sp)
    800039d4:	00013403          	ld	s0,0(sp)
    800039d8:	01010113          	addi	sp,sp,16
    800039dc:	00008067          	ret

00000000800039e0 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    800039e0:	ff010113          	addi	sp,sp,-16
    800039e4:	00113423          	sd	ra,8(sp)
    800039e8:	00813023          	sd	s0,0(sp)
    800039ec:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    800039f0:	00002097          	auipc	ra,0x2
    800039f4:	80c080e7          	jalr	-2036(ra) # 800051fc <_ZN15MemoryAllocator5kfreeEPv>
}
    800039f8:	00813083          	ld	ra,8(sp)
    800039fc:	00013403          	ld	s0,0(sp)
    80003a00:	01010113          	addi	sp,sp,16
    80003a04:	00008067          	ret

0000000080003a08 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003a08:	ff010113          	addi	sp,sp,-16
    80003a0c:	00813423          	sd	s0,8(sp)
    80003a10:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80003a14:	00010797          	auipc	a5,0x10
    80003a18:	2c47b783          	ld	a5,708(a5) # 80013cd8 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003a1c:	00000513          	li	a0,0
    while(curr != 0)
    80003a20:	00078863          	beqz	a5,80003a30 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80003a24:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003a28:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003a2c:	ff5ff06f          	j	80003a20 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003a30:	0005051b          	sext.w	a0,a0
    80003a34:	00813403          	ld	s0,8(sp)
    80003a38:	01010113          	addi	sp,sp,16
    80003a3c:	00008067          	ret

0000000080003a40 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003a40:	ff010113          	addi	sp,sp,-16
    80003a44:	00813423          	sd	s0,8(sp)
    80003a48:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003a4c:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003a50:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80003a54:	00010797          	auipc	a5,0x10
    80003a58:	2847b783          	ld	a5,644(a5) # 80013cd8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003a5c:	02078263          	beqz	a5,80003a80 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003a60:	00010797          	auipc	a5,0x10
    80003a64:	27878793          	addi	a5,a5,632 # 80013cd8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003a68:	0087b703          	ld	a4,8(a5)
    80003a6c:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003a70:	00a7b423          	sd	a0,8(a5)
    }
}
    80003a74:	00813403          	ld	s0,8(sp)
    80003a78:	01010113          	addi	sp,sp,16
    80003a7c:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003a80:	00010797          	auipc	a5,0x10
    80003a84:	25878793          	addi	a5,a5,600 # 80013cd8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003a88:	00a7b423          	sd	a0,8(a5)
    80003a8c:	00a7b023          	sd	a0,0(a5)
    80003a90:	fe5ff06f          	j	80003a74 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080003a94 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80003a94:	ff010113          	addi	sp,sp,-16
    80003a98:	00813423          	sd	s0,8(sp)
    80003a9c:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80003aa0:	00010517          	auipc	a0,0x10
    80003aa4:	23853503          	ld	a0,568(a0) # 80013cd8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003aa8:	00050c63          	beqz	a0,80003ac0 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003aac:	00853783          	ld	a5,8(a0)
    80003ab0:	00078e63          	beqz	a5,80003acc <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80003ab4:	00010717          	auipc	a4,0x10
    80003ab8:	22f73223          	sd	a5,548(a4) # 80013cd8 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003abc:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003ac0:	00813403          	ld	s0,8(sp)
    80003ac4:	01010113          	addi	sp,sp,16
    80003ac8:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003acc:	00010797          	auipc	a5,0x10
    80003ad0:	20c78793          	addi	a5,a5,524 # 80013cd8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003ad4:	0007b423          	sd	zero,8(a5)
    80003ad8:	0007b023          	sd	zero,0(a5)
    80003adc:	fe1ff06f          	j	80003abc <_ZN9Scheduler3getEv+0x28>

0000000080003ae0 <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    80003ae0:	fe010113          	addi	sp,sp,-32
    80003ae4:	00113c23          	sd	ra,24(sp)
    80003ae8:	00813823          	sd	s0,16(sp)
    80003aec:	00913423          	sd	s1,8(sp)
    80003af0:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    80003af4:	00010497          	auipc	s1,0x10
    80003af8:	1e44b483          	ld	s1,484(s1) # 80013cd8 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003afc:	02048863          	beqz	s1,80003b2c <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    80003b00:	00000613          	li	a2,0
    80003b04:	01000593          	li	a1,16
    80003b08:	00048513          	mv	a0,s1
    80003b0c:	00000097          	auipc	ra,0x0
    80003b10:	cc0080e7          	jalr	-832(ra) # 800037cc <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    80003b14:	00005517          	auipc	a0,0x5
    80003b18:	66c50513          	addi	a0,a0,1644 # 80009180 <CONSOLE_STATUS+0x170>
    80003b1c:	00000097          	auipc	ra,0x0
    80003b20:	c6c080e7          	jalr	-916(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    80003b24:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003b28:	fd5ff06f          	j	80003afc <_ZN9Scheduler5printEv+0x1c>
    }
}
    80003b2c:	01813083          	ld	ra,24(sp)
    80003b30:	01013403          	ld	s0,16(sp)
    80003b34:	00813483          	ld	s1,8(sp)
    80003b38:	02010113          	addi	sp,sp,32
    80003b3c:	00008067          	ret

0000000080003b40 <main>:
#include "../h/Riscv.hpp"

void main()
{
    80003b40:	ff010113          	addi	sp,sp,-16
    80003b44:	00113423          	sd	ra,8(sp)
    80003b48:	00813023          	sd	s0,0(sp)
    80003b4c:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003b50:	00001097          	auipc	ra,0x1
    80003b54:	e48080e7          	jalr	-440(ra) # 80004998 <_ZN5Riscv10kernelMainEv>
    80003b58:	00813083          	ld	ra,8(sp)
    80003b5c:	00013403          	ld	s0,0(sp)
    80003b60:	01010113          	addi	sp,sp,16
    80003b64:	00008067          	ret

0000000080003b68 <_Z14buddyInitTest1v>:
#include "../h/buddyTests.hpp"
#include "../h/KConsole.hpp"
#include "../h/MemoryAllocator.hpp"

void buddyInitTest1()
{
    80003b68:	ff010113          	addi	sp,sp,-16
    80003b6c:	00113423          	sd	ra,8(sp)
    80003b70:	00813023          	sd	s0,0(sp)
    80003b74:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 18);
    80003b78:	01200593          	li	a1,18
    80003b7c:	00008797          	auipc	a5,0x8
    80003b80:	01c7b783          	ld	a5,28(a5) # 8000bb98 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003b84:	0007b503          	ld	a0,0(a5)
    80003b88:	fffff097          	auipc	ra,0xfffff
    80003b8c:	4d8080e7          	jalr	1240(ra) # 80003060 <_Z10buddy_initPvm>
    printBuddyInfo(buddy);
    80003b90:	fffff097          	auipc	ra,0xfffff
    80003b94:	628080e7          	jalr	1576(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003b98:	00813083          	ld	ra,8(sp)
    80003b9c:	00013403          	ld	s0,0(sp)
    80003ba0:	01010113          	addi	sp,sp,16
    80003ba4:	00008067          	ret

0000000080003ba8 <_Z20buddyOnlyAllocsTest1v>:

void buddyOnlyAllocsTest1()
{
    80003ba8:	fe010113          	addi	sp,sp,-32
    80003bac:	00113c23          	sd	ra,24(sp)
    80003bb0:	00813823          	sd	s0,16(sp)
    80003bb4:	00913423          	sd	s1,8(sp)
    80003bb8:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003bbc:	00a00593          	li	a1,10
    80003bc0:	00008797          	auipc	a5,0x8
    80003bc4:	fd87b783          	ld	a5,-40(a5) # 8000bb98 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003bc8:	0007b503          	ld	a0,0(a5)
    80003bcc:	fffff097          	auipc	ra,0xfffff
    80003bd0:	494080e7          	jalr	1172(ra) # 80003060 <_Z10buddy_initPvm>
    80003bd4:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    80003bd8:	fffff097          	auipc	ra,0xfffff
    80003bdc:	5e0080e7          	jalr	1504(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003be0:	00100593          	li	a1,1
    80003be4:	00048513          	mv	a0,s1
    80003be8:	fffff097          	auipc	ra,0xfffff
    80003bec:	268080e7          	jalr	616(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003bf0:	00048513          	mv	a0,s1
    80003bf4:	fffff097          	auipc	ra,0xfffff
    80003bf8:	5c4080e7          	jalr	1476(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003bfc:	00100593          	li	a1,1
    80003c00:	00048513          	mv	a0,s1
    80003c04:	fffff097          	auipc	ra,0xfffff
    80003c08:	24c080e7          	jalr	588(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003c0c:	00048513          	mv	a0,s1
    80003c10:	fffff097          	auipc	ra,0xfffff
    80003c14:	5a8080e7          	jalr	1448(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003c18:	00100593          	li	a1,1
    80003c1c:	00048513          	mv	a0,s1
    80003c20:	fffff097          	auipc	ra,0xfffff
    80003c24:	230080e7          	jalr	560(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003c28:	00048513          	mv	a0,s1
    80003c2c:	fffff097          	auipc	ra,0xfffff
    80003c30:	58c080e7          	jalr	1420(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,3);
    80003c34:	00300593          	li	a1,3
    80003c38:	00048513          	mv	a0,s1
    80003c3c:	fffff097          	auipc	ra,0xfffff
    80003c40:	214080e7          	jalr	532(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003c44:	00048513          	mv	a0,s1
    80003c48:	fffff097          	auipc	ra,0xfffff
    80003c4c:	570080e7          	jalr	1392(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003c50:	01813083          	ld	ra,24(sp)
    80003c54:	01013403          	ld	s0,16(sp)
    80003c58:	00813483          	ld	s1,8(sp)
    80003c5c:	02010113          	addi	sp,sp,32
    80003c60:	00008067          	ret

0000000080003c64 <_Z20buddyOnlyAllocsTest2v>:

void buddyOnlyAllocsTest2()
{
    80003c64:	fe010113          	addi	sp,sp,-32
    80003c68:	00113c23          	sd	ra,24(sp)
    80003c6c:	00813823          	sd	s0,16(sp)
    80003c70:	00913423          	sd	s1,8(sp)
    80003c74:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003c78:	00a00593          	li	a1,10
    80003c7c:	00008797          	auipc	a5,0x8
    80003c80:	f1c7b783          	ld	a5,-228(a5) # 8000bb98 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003c84:	0007b503          	ld	a0,0(a5)
    80003c88:	fffff097          	auipc	ra,0xfffff
    80003c8c:	3d8080e7          	jalr	984(ra) # 80003060 <_Z10buddy_initPvm>
    80003c90:	00050493          	mv	s1,a0
    void* adr = buddy_alloc(buddy, 100);
    80003c94:	06400593          	li	a1,100
    80003c98:	fffff097          	auipc	ra,0xfffff
    80003c9c:	1b8080e7          	jalr	440(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    if(adr == nullptr)
    80003ca0:	00050c63          	beqz	a0,80003cb8 <_Z20buddyOnlyAllocsTest2v+0x54>
    {
        printBuddyInfo(buddy);
    }
}
    80003ca4:	01813083          	ld	ra,24(sp)
    80003ca8:	01013403          	ld	s0,16(sp)
    80003cac:	00813483          	ld	s1,8(sp)
    80003cb0:	02010113          	addi	sp,sp,32
    80003cb4:	00008067          	ret
        printBuddyInfo(buddy);
    80003cb8:	00048513          	mv	a0,s1
    80003cbc:	fffff097          	auipc	ra,0xfffff
    80003cc0:	4fc080e7          	jalr	1276(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003cc4:	fe1ff06f          	j	80003ca4 <_Z20buddyOnlyAllocsTest2v+0x40>

0000000080003cc8 <_Z19buddyAllocFreeTest1v>:

void buddyAllocFreeTest1()
{
    80003cc8:	fd010113          	addi	sp,sp,-48
    80003ccc:	02113423          	sd	ra,40(sp)
    80003cd0:	02813023          	sd	s0,32(sp)
    80003cd4:	00913c23          	sd	s1,24(sp)
    80003cd8:	01213823          	sd	s2,16(sp)
    80003cdc:	01313423          	sd	s3,8(sp)
    80003ce0:	03010413          	addi	s0,sp,48
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003ce4:	00a00593          	li	a1,10
    80003ce8:	00008797          	auipc	a5,0x8
    80003cec:	eb07b783          	ld	a5,-336(a5) # 8000bb98 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003cf0:	0007b503          	ld	a0,0(a5)
    80003cf4:	fffff097          	auipc	ra,0xfffff
    80003cf8:	36c080e7          	jalr	876(ra) # 80003060 <_Z10buddy_initPvm>
    80003cfc:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    80003d00:	fffff097          	auipc	ra,0xfffff
    80003d04:	4b8080e7          	jalr	1208(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
    void* adr = buddy_alloc(buddy,1);
    80003d08:	00100593          	li	a1,1
    80003d0c:	00048513          	mv	a0,s1
    80003d10:	fffff097          	auipc	ra,0xfffff
    80003d14:	140080e7          	jalr	320(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    80003d18:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003d1c:	00048513          	mv	a0,s1
    80003d20:	fffff097          	auipc	ra,0xfffff
    80003d24:	498080e7          	jalr	1176(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003d28:	00100613          	li	a2,1
    80003d2c:	00090593          	mv	a1,s2
    80003d30:	00048513          	mv	a0,s1
    80003d34:	fffff097          	auipc	ra,0xfffff
    80003d38:	40c080e7          	jalr	1036(ra) # 80003140 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003d3c:	00048513          	mv	a0,s1
    80003d40:	fffff097          	auipc	ra,0xfffff
    80003d44:	478080e7          	jalr	1144(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>

    adr = buddy_alloc(buddy, 2);
    80003d48:	00200593          	li	a1,2
    80003d4c:	00048513          	mv	a0,s1
    80003d50:	fffff097          	auipc	ra,0xfffff
    80003d54:	100080e7          	jalr	256(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    80003d58:	00050913          	mv	s2,a0
    void* adr2 = buddy_alloc(buddy, 3);
    80003d5c:	00300593          	li	a1,3
    80003d60:	00048513          	mv	a0,s1
    80003d64:	fffff097          	auipc	ra,0xfffff
    80003d68:	0ec080e7          	jalr	236(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    80003d6c:	00050993          	mv	s3,a0
    printBuddyInfo(buddy);
    80003d70:	00048513          	mv	a0,s1
    80003d74:	fffff097          	auipc	ra,0xfffff
    80003d78:	444080e7          	jalr	1092(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr, 2);
    80003d7c:	00200613          	li	a2,2
    80003d80:	00090593          	mv	a1,s2
    80003d84:	00048513          	mv	a0,s1
    80003d88:	fffff097          	auipc	ra,0xfffff
    80003d8c:	3b8080e7          	jalr	952(ra) # 80003140 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003d90:	00048513          	mv	a0,s1
    80003d94:	fffff097          	auipc	ra,0xfffff
    80003d98:	424080e7          	jalr	1060(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
    adr = buddy_alloc(buddy, 1);
    80003d9c:	00100593          	li	a1,1
    80003da0:	00048513          	mv	a0,s1
    80003da4:	fffff097          	auipc	ra,0xfffff
    80003da8:	0ac080e7          	jalr	172(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    80003dac:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003db0:	00048513          	mv	a0,s1
    80003db4:	fffff097          	auipc	ra,0xfffff
    80003db8:	404080e7          	jalr	1028(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr2, 3);
    80003dbc:	00300613          	li	a2,3
    80003dc0:	00098593          	mv	a1,s3
    80003dc4:	00048513          	mv	a0,s1
    80003dc8:	fffff097          	auipc	ra,0xfffff
    80003dcc:	378080e7          	jalr	888(ra) # 80003140 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003dd0:	00048513          	mv	a0,s1
    80003dd4:	fffff097          	auipc	ra,0xfffff
    80003dd8:	3e4080e7          	jalr	996(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003ddc:	00100613          	li	a2,1
    80003de0:	00090593          	mv	a1,s2
    80003de4:	00048513          	mv	a0,s1
    80003de8:	fffff097          	auipc	ra,0xfffff
    80003dec:	358080e7          	jalr	856(ra) # 80003140 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003df0:	00048513          	mv	a0,s1
    80003df4:	fffff097          	auipc	ra,0xfffff
    80003df8:	3c4080e7          	jalr	964(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003dfc:	02813083          	ld	ra,40(sp)
    80003e00:	02013403          	ld	s0,32(sp)
    80003e04:	01813483          	ld	s1,24(sp)
    80003e08:	01013903          	ld	s2,16(sp)
    80003e0c:	00813983          	ld	s3,8(sp)
    80003e10:	03010113          	addi	sp,sp,48
    80003e14:	00008067          	ret

0000000080003e18 <_Z13buddyTestMixav>:

void buddyTestMixa()
{
    80003e18:	fc010113          	addi	sp,sp,-64
    80003e1c:	02113c23          	sd	ra,56(sp)
    80003e20:	02813823          	sd	s0,48(sp)
    80003e24:	02913423          	sd	s1,40(sp)
    80003e28:	03213023          	sd	s2,32(sp)
    80003e2c:	01313c23          	sd	s3,24(sp)
    80003e30:	01413823          	sd	s4,16(sp)
    80003e34:	01513423          	sd	s5,8(sp)
    80003e38:	04010413          	addi	s0,sp,64
    size_t mask = ((size_t)-1) << 12;
    buddyAllocator* buddy = (buddyAllocator*)(((size_t)HEAP_START_ADDR & mask) + (1 << 12));
    80003e3c:	00008797          	auipc	a5,0x8
    80003e40:	d5c7b783          	ld	a5,-676(a5) # 8000bb98 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003e44:	0007b983          	ld	s3,0(a5)
    80003e48:	fffff7b7          	lui	a5,0xfffff
    80003e4c:	00f9f9b3          	and	s3,s3,a5
    80003e50:	000017b7          	lui	a5,0x1
    80003e54:	00f989b3          	add	s3,s3,a5
    void** x = (void**)MemoryAllocator::kmalloc(5000*sizeof(void*));
    80003e58:	0000a537          	lui	a0,0xa
    80003e5c:	c4050513          	addi	a0,a0,-960 # 9c40 <_entry-0x7fff63c0>
    80003e60:	00001097          	auipc	ra,0x1
    80003e64:	32c080e7          	jalr	812(ra) # 8000518c <_ZN15MemoryAllocator7kmallocEm>
    80003e68:	00050a13          	mv	s4,a0
    printBuddyInfo(buddy);
    80003e6c:	00098513          	mv	a0,s3
    80003e70:	fffff097          	auipc	ra,0xfffff
    80003e74:	348080e7          	jalr	840(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
    for(int i = 0; i < 5000;i++)
    80003e78:	00000493          	li	s1,0
    80003e7c:	0080006f          	j	80003e84 <_Z13buddyTestMixav+0x6c>
    80003e80:	0014849b          	addiw	s1,s1,1
    80003e84:	000017b7          	lui	a5,0x1
    80003e88:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80003e8c:	0697c463          	blt	a5,s1,80003ef4 <_Z13buddyTestMixav+0xdc>
    {
        x[i] = buddy_alloc(buddy, 2);
    80003e90:	00349913          	slli	s2,s1,0x3
    80003e94:	012a0933          	add	s2,s4,s2
    80003e98:	00200593          	li	a1,2
    80003e9c:	00098513          	mv	a0,s3
    80003ea0:	fffff097          	auipc	ra,0xfffff
    80003ea4:	fb0080e7          	jalr	-80(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    80003ea8:	00a93023          	sd	a0,0(s2)
        if(x[i] == nullptr)
    80003eac:	fc051ae3          	bnez	a0,80003e80 <_Z13buddyTestMixav+0x68>
        {
            KConsole::trapPrintStringInt("Bad allocation ", i);
    80003eb0:	00a00613          	li	a2,10
    80003eb4:	00048593          	mv	a1,s1
    80003eb8:	00005517          	auipc	a0,0x5
    80003ebc:	4c850513          	addi	a0,a0,1224 # 80009380 <CONSOLE_STATUS+0x370>
    80003ec0:	00000097          	auipc	ra,0x0
    80003ec4:	9a0080e7          	jalr	-1632(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
            for(int j = 0;j < i;j++)
    80003ec8:	00000913          	li	s2,0
    80003ecc:	02995463          	bge	s2,s1,80003ef4 <_Z13buddyTestMixav+0xdc>
            {
                buddy_free(buddy, x[j], 2);
    80003ed0:	00391793          	slli	a5,s2,0x3
    80003ed4:	00fa07b3          	add	a5,s4,a5
    80003ed8:	00200613          	li	a2,2
    80003edc:	0007b583          	ld	a1,0(a5)
    80003ee0:	00098513          	mv	a0,s3
    80003ee4:	fffff097          	auipc	ra,0xfffff
    80003ee8:	25c080e7          	jalr	604(ra) # 80003140 <_Z10buddy_freeP14buddyAllocatorPvm>
            for(int j = 0;j < i;j++)
    80003eec:	0019091b          	addiw	s2,s2,1
    80003ef0:	fddff06f          	j	80003ecc <_Z13buddyTestMixav+0xb4>
            }
            break;
        }
    }
    printBuddyInfo(buddy);
    80003ef4:	00098513          	mv	a0,s3
    80003ef8:	fffff097          	auipc	ra,0xfffff
    80003efc:	2c0080e7          	jalr	704(ra) # 800031b8 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003f00:	03813083          	ld	ra,56(sp)
    80003f04:	03013403          	ld	s0,48(sp)
    80003f08:	02813483          	ld	s1,40(sp)
    80003f0c:	02013903          	ld	s2,32(sp)
    80003f10:	01813983          	ld	s3,24(sp)
    80003f14:	01013a03          	ld	s4,16(sp)
    80003f18:	00813a83          	ld	s5,8(sp)
    80003f1c:	04010113          	addi	sp,sp,64
    80003f20:	00008067          	ret

0000000080003f24 <_ZN6Thread6runnerEPv>:
    myHandle = nullptr;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80003f24:	ff010113          	addi	sp,sp,-16
    80003f28:	00113423          	sd	ra,8(sp)
    80003f2c:	00813023          	sd	s0,0(sp)
    80003f30:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    80003f34:	00053783          	ld	a5,0(a0)
    80003f38:	0107b783          	ld	a5,16(a5)
    80003f3c:	000780e7          	jalr	a5
}
    80003f40:	00813083          	ld	ra,8(sp)
    80003f44:	00013403          	ld	s0,0(sp)
    80003f48:	01010113          	addi	sp,sp,16
    80003f4c:	00008067          	ret

0000000080003f50 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    80003f50:	00008797          	auipc	a5,0x8
    80003f54:	bb878793          	addi	a5,a5,-1096 # 8000bb08 <_ZTV6Thread+0x10>
    80003f58:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    80003f5c:	00853503          	ld	a0,8(a0)
    80003f60:	02050663          	beqz	a0,80003f8c <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    80003f64:	ff010113          	addi	sp,sp,-16
    80003f68:	00113423          	sd	ra,8(sp)
    80003f6c:	00813023          	sd	s0,0(sp)
    80003f70:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003f74:	ffffe097          	auipc	ra,0xffffe
    80003f78:	6cc080e7          	jalr	1740(ra) # 80002640 <_ZN7_threaddlEPv>
}
    80003f7c:	00813083          	ld	ra,8(sp)
    80003f80:	00013403          	ld	s0,0(sp)
    80003f84:	01010113          	addi	sp,sp,16
    80003f88:	00008067          	ret
    80003f8c:	00008067          	ret

0000000080003f90 <_ZN9SemaphoreD1Ev>:
    if(myHandle == nullptr)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80003f90:	00008797          	auipc	a5,0x8
    80003f94:	ba078793          	addi	a5,a5,-1120 # 8000bb30 <_ZTV9Semaphore+0x10>
    80003f98:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80003f9c:	00853503          	ld	a0,8(a0)
    80003fa0:	02050663          	beqz	a0,80003fcc <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80003fa4:	ff010113          	addi	sp,sp,-16
    80003fa8:	00113423          	sd	ra,8(sp)
    80003fac:	00813023          	sd	s0,0(sp)
    80003fb0:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003fb4:	00000097          	auipc	ra,0x0
    80003fb8:	468080e7          	jalr	1128(ra) # 8000441c <_ZN4_semdlEPv>
}
    80003fbc:	00813083          	ld	ra,8(sp)
    80003fc0:	00013403          	ld	s0,0(sp)
    80003fc4:	01010113          	addi	sp,sp,16
    80003fc8:	00008067          	ret
    80003fcc:	00008067          	ret

0000000080003fd0 <_Znwm>:
{
    80003fd0:	ff010113          	addi	sp,sp,-16
    80003fd4:	00113423          	sd	ra,8(sp)
    80003fd8:	00813023          	sd	s0,0(sp)
    80003fdc:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003fe0:	ffffe097          	auipc	ra,0xffffe
    80003fe4:	308080e7          	jalr	776(ra) # 800022e8 <_Z9mem_allocm>
}
    80003fe8:	00813083          	ld	ra,8(sp)
    80003fec:	00013403          	ld	s0,0(sp)
    80003ff0:	01010113          	addi	sp,sp,16
    80003ff4:	00008067          	ret

0000000080003ff8 <_ZdlPv>:
{
    80003ff8:	ff010113          	addi	sp,sp,-16
    80003ffc:	00113423          	sd	ra,8(sp)
    80004000:	00813023          	sd	s0,0(sp)
    80004004:	01010413          	addi	s0,sp,16
    mem_free(p);
    80004008:	ffffe097          	auipc	ra,0xffffe
    8000400c:	310080e7          	jalr	784(ra) # 80002318 <_Z8mem_freePv>
}
    80004010:	00813083          	ld	ra,8(sp)
    80004014:	00013403          	ld	s0,0(sp)
    80004018:	01010113          	addi	sp,sp,16
    8000401c:	00008067          	ret

0000000080004020 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80004020:	fe010113          	addi	sp,sp,-32
    80004024:	00113c23          	sd	ra,24(sp)
    80004028:	00813823          	sd	s0,16(sp)
    8000402c:	00913423          	sd	s1,8(sp)
    80004030:	02010413          	addi	s0,sp,32
    80004034:	00050493          	mv	s1,a0
}
    80004038:	00000097          	auipc	ra,0x0
    8000403c:	f18080e7          	jalr	-232(ra) # 80003f50 <_ZN6ThreadD1Ev>
    80004040:	00048513          	mv	a0,s1
    80004044:	00000097          	auipc	ra,0x0
    80004048:	fb4080e7          	jalr	-76(ra) # 80003ff8 <_ZdlPv>
    8000404c:	01813083          	ld	ra,24(sp)
    80004050:	01013403          	ld	s0,16(sp)
    80004054:	00813483          	ld	s1,8(sp)
    80004058:	02010113          	addi	sp,sp,32
    8000405c:	00008067          	ret

0000000080004060 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80004060:	fe010113          	addi	sp,sp,-32
    80004064:	00113c23          	sd	ra,24(sp)
    80004068:	00813823          	sd	s0,16(sp)
    8000406c:	00913423          	sd	s1,8(sp)
    80004070:	02010413          	addi	s0,sp,32
    80004074:	00050493          	mv	s1,a0
}
    80004078:	00000097          	auipc	ra,0x0
    8000407c:	f18080e7          	jalr	-232(ra) # 80003f90 <_ZN9SemaphoreD1Ev>
    80004080:	00048513          	mv	a0,s1
    80004084:	00000097          	auipc	ra,0x0
    80004088:	f74080e7          	jalr	-140(ra) # 80003ff8 <_ZdlPv>
    8000408c:	01813083          	ld	ra,24(sp)
    80004090:	01013403          	ld	s0,16(sp)
    80004094:	00813483          	ld	s1,8(sp)
    80004098:	02010113          	addi	sp,sp,32
    8000409c:	00008067          	ret

00000000800040a0 <_ZN6Thread5startEv>:
    if(myHandle != nullptr)
    800040a0:	00853503          	ld	a0,8(a0)
    800040a4:	02050663          	beqz	a0,800040d0 <_ZN6Thread5startEv+0x30>
{
    800040a8:	ff010113          	addi	sp,sp,-16
    800040ac:	00113423          	sd	ra,8(sp)
    800040b0:	00813023          	sd	s0,0(sp)
    800040b4:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    800040b8:	ffffe097          	auipc	ra,0xffffe
    800040bc:	43c080e7          	jalr	1084(ra) # 800024f4 <_Z12thread_startPv>
}
    800040c0:	00813083          	ld	ra,8(sp)
    800040c4:	00013403          	ld	s0,0(sp)
    800040c8:	01010113          	addi	sp,sp,16
    800040cc:	00008067          	ret
        return -1;
    800040d0:	fff00513          	li	a0,-1
}
    800040d4:	00008067          	ret

00000000800040d8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800040d8:	ff010113          	addi	sp,sp,-16
    800040dc:	00113423          	sd	ra,8(sp)
    800040e0:	00813023          	sd	s0,0(sp)
    800040e4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800040e8:	ffffe097          	auipc	ra,0xffffe
    800040ec:	2dc080e7          	jalr	732(ra) # 800023c4 <_Z15thread_dispatchv>
}
    800040f0:	00813083          	ld	ra,8(sp)
    800040f4:	00013403          	ld	s0,0(sp)
    800040f8:	01010113          	addi	sp,sp,16
    800040fc:	00008067          	ret

0000000080004100 <_ZN6Thread5sleepEm>:
{
    80004100:	ff010113          	addi	sp,sp,-16
    80004104:	00113423          	sd	ra,8(sp)
    80004108:	00813023          	sd	s0,0(sp)
    8000410c:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80004110:	ffffe097          	auipc	ra,0xffffe
    80004114:	3b8080e7          	jalr	952(ra) # 800024c8 <_Z10time_sleepm>
}
    80004118:	00813083          	ld	ra,8(sp)
    8000411c:	00013403          	ld	s0,0(sp)
    80004120:	01010113          	addi	sp,sp,16
    80004124:	00008067          	ret

0000000080004128 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80004128:	fe010113          	addi	sp,sp,-32
    8000412c:	00113c23          	sd	ra,24(sp)
    80004130:	00813823          	sd	s0,16(sp)
    80004134:	00913423          	sd	s1,8(sp)
    80004138:	01213023          	sd	s2,0(sp)
    8000413c:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    80004140:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80004144:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80004148:	0004b783          	ld	a5,0(s1)
    8000414c:	0187b783          	ld	a5,24(a5)
    80004150:	00048513          	mv	a0,s1
    80004154:	000780e7          	jalr	a5
        Thread::sleep(time);
    80004158:	00090513          	mv	a0,s2
    8000415c:	00000097          	auipc	ra,0x0
    80004160:	fa4080e7          	jalr	-92(ra) # 80004100 <_ZN6Thread5sleepEm>
    while(true)
    80004164:	fe5ff06f          	j	80004148 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080004168 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80004168:	ff010113          	addi	sp,sp,-16
    8000416c:	00113423          	sd	ra,8(sp)
    80004170:	00813023          	sd	s0,0(sp)
    80004174:	01010413          	addi	s0,sp,16
    80004178:	00008797          	auipc	a5,0x8
    8000417c:	99078793          	addi	a5,a5,-1648 # 8000bb08 <_ZTV6Thread+0x10>
    80004180:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80004184:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    80004188:	00850513          	addi	a0,a0,8
    8000418c:	ffffe097          	auipc	ra,0xffffe
    80004190:	394080e7          	jalr	916(ra) # 80002520 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80004194:	00813083          	ld	ra,8(sp)
    80004198:	00013403          	ld	s0,0(sp)
    8000419c:	01010113          	addi	sp,sp,16
    800041a0:	00008067          	ret

00000000800041a4 <_ZN6ThreadC1Ev>:
Thread::Thread()
    800041a4:	ff010113          	addi	sp,sp,-16
    800041a8:	00113423          	sd	ra,8(sp)
    800041ac:	00813023          	sd	s0,0(sp)
    800041b0:	01010413          	addi	s0,sp,16
    800041b4:	00008797          	auipc	a5,0x8
    800041b8:	95478793          	addi	a5,a5,-1708 # 8000bb08 <_ZTV6Thread+0x10>
    800041bc:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800041c0:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    800041c4:	00050613          	mv	a2,a0
    800041c8:	00000597          	auipc	a1,0x0
    800041cc:	d5c58593          	addi	a1,a1,-676 # 80003f24 <_ZN6Thread6runnerEPv>
    800041d0:	00850513          	addi	a0,a0,8
    800041d4:	ffffe097          	auipc	ra,0xffffe
    800041d8:	34c080e7          	jalr	844(ra) # 80002520 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    800041dc:	00813083          	ld	ra,8(sp)
    800041e0:	00013403          	ld	s0,0(sp)
    800041e4:	01010113          	addi	sp,sp,16
    800041e8:	00008067          	ret

00000000800041ec <_ZN9Semaphore4waitEv>:
    if(myHandle == nullptr)
    800041ec:	00853503          	ld	a0,8(a0)
    800041f0:	02050663          	beqz	a0,8000421c <_ZN9Semaphore4waitEv+0x30>
{
    800041f4:	ff010113          	addi	sp,sp,-16
    800041f8:	00113423          	sd	ra,8(sp)
    800041fc:	00813023          	sd	s0,0(sp)
    80004200:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80004204:	ffffe097          	auipc	ra,0xffffe
    80004208:	26c080e7          	jalr	620(ra) # 80002470 <_Z8sem_waitP4_sem>
}
    8000420c:	00813083          	ld	ra,8(sp)
    80004210:	00013403          	ld	s0,0(sp)
    80004214:	01010113          	addi	sp,sp,16
    80004218:	00008067          	ret
        return -1;
    8000421c:	fff00513          	li	a0,-1
}
    80004220:	00008067          	ret

0000000080004224 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    80004224:	fe010113          	addi	sp,sp,-32
    80004228:	00113c23          	sd	ra,24(sp)
    8000422c:	00813823          	sd	s0,16(sp)
    80004230:	00913423          	sd	s1,8(sp)
    80004234:	02010413          	addi	s0,sp,32
    80004238:	00050493          	mv	s1,a0
    8000423c:	00008797          	auipc	a5,0x8
    80004240:	8f478793          	addi	a5,a5,-1804 # 8000bb30 <_ZTV9Semaphore+0x10>
    80004244:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    80004248:	00850513          	addi	a0,a0,8
    8000424c:	ffffe097          	auipc	ra,0xffffe
    80004250:	1c0080e7          	jalr	448(ra) # 8000240c <_Z8sem_openPP4_semj>
    if(retval != 0)
    80004254:	00050463          	beqz	a0,8000425c <_ZN9SemaphoreC1Ej+0x38>
        myHandle = nullptr;
    80004258:	0004b423          	sd	zero,8(s1)
}
    8000425c:	01813083          	ld	ra,24(sp)
    80004260:	01013403          	ld	s0,16(sp)
    80004264:	00813483          	ld	s1,8(sp)
    80004268:	02010113          	addi	sp,sp,32
    8000426c:	00008067          	ret

0000000080004270 <_ZN9Semaphore6signalEv>:
    if(myHandle == nullptr)
    80004270:	00853503          	ld	a0,8(a0)
    80004274:	02050663          	beqz	a0,800042a0 <_ZN9Semaphore6signalEv+0x30>
{
    80004278:	ff010113          	addi	sp,sp,-16
    8000427c:	00113423          	sd	ra,8(sp)
    80004280:	00813023          	sd	s0,0(sp)
    80004284:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80004288:	ffffe097          	auipc	ra,0xffffe
    8000428c:	214080e7          	jalr	532(ra) # 8000249c <_Z10sem_signalP4_sem>
}
    80004290:	00813083          	ld	ra,8(sp)
    80004294:	00013403          	ld	s0,0(sp)
    80004298:	01010113          	addi	sp,sp,16
    8000429c:	00008067          	ret
        return -1;
    800042a0:	fff00513          	li	a0,-1
}
    800042a4:	00008067          	ret

00000000800042a8 <_ZN7Console4getcEv>:
{
    800042a8:	ff010113          	addi	sp,sp,-16
    800042ac:	00113423          	sd	ra,8(sp)
    800042b0:	00813023          	sd	s0,0(sp)
    800042b4:	01010413          	addi	s0,sp,16
    return ::getc();
    800042b8:	ffffe097          	auipc	ra,0xffffe
    800042bc:	2e8080e7          	jalr	744(ra) # 800025a0 <_Z4getcv>
}
    800042c0:	00813083          	ld	ra,8(sp)
    800042c4:	00013403          	ld	s0,0(sp)
    800042c8:	01010113          	addi	sp,sp,16
    800042cc:	00008067          	ret

00000000800042d0 <_ZN7Console4putcEc>:
{
    800042d0:	ff010113          	addi	sp,sp,-16
    800042d4:	00113423          	sd	ra,8(sp)
    800042d8:	00813023          	sd	s0,0(sp)
    800042dc:	01010413          	addi	s0,sp,16
    return ::putc(c);
    800042e0:	ffffe097          	auipc	ra,0xffffe
    800042e4:	2e8080e7          	jalr	744(ra) # 800025c8 <_Z4putcc>
}
    800042e8:	00813083          	ld	ra,8(sp)
    800042ec:	00013403          	ld	s0,0(sp)
    800042f0:	01010113          	addi	sp,sp,16
    800042f4:	00008067          	ret

00000000800042f8 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800042f8:	fe010113          	addi	sp,sp,-32
    800042fc:	00113c23          	sd	ra,24(sp)
    80004300:	00813823          	sd	s0,16(sp)
    80004304:	00913423          	sd	s1,8(sp)
    80004308:	01213023          	sd	s2,0(sp)
    8000430c:	02010413          	addi	s0,sp,32
    80004310:	00050493          	mv	s1,a0
    80004314:	00058913          	mv	s2,a1
    80004318:	01000513          	li	a0,16
    8000431c:	00000097          	auipc	ra,0x0
    80004320:	cb4080e7          	jalr	-844(ra) # 80003fd0 <_Znwm>
    80004324:	00050613          	mv	a2,a0
    80004328:	00050663          	beqz	a0,80004334 <_ZN14PeriodicThreadC1Em+0x3c>
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    8000432c:	00953023          	sd	s1,0(a0)
    80004330:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80004334:	00000597          	auipc	a1,0x0
    80004338:	df458593          	addi	a1,a1,-524 # 80004128 <_ZN14PeriodicThread6runnerEPv>
    8000433c:	00048513          	mv	a0,s1
    80004340:	00000097          	auipc	ra,0x0
    80004344:	e28080e7          	jalr	-472(ra) # 80004168 <_ZN6ThreadC1EPFvPvES0_>
    80004348:	00007797          	auipc	a5,0x7
    8000434c:	79078793          	addi	a5,a5,1936 # 8000bad8 <_ZTV14PeriodicThread+0x10>
    80004350:	00f4b023          	sd	a5,0(s1)
}
    80004354:	01813083          	ld	ra,24(sp)
    80004358:	01013403          	ld	s0,16(sp)
    8000435c:	00813483          	ld	s1,8(sp)
    80004360:	00013903          	ld	s2,0(sp)
    80004364:	02010113          	addi	sp,sp,32
    80004368:	00008067          	ret

000000008000436c <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    8000436c:	ff010113          	addi	sp,sp,-16
    80004370:	00813423          	sd	s0,8(sp)
    80004374:	01010413          	addi	s0,sp,16
    80004378:	00813403          	ld	s0,8(sp)
    8000437c:	01010113          	addi	sp,sp,16
    80004380:	00008067          	ret

0000000080004384 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80004384:	ff010113          	addi	sp,sp,-16
    80004388:	00813423          	sd	s0,8(sp)
    8000438c:	01010413          	addi	s0,sp,16
    80004390:	00813403          	ld	s0,8(sp)
    80004394:	01010113          	addi	sp,sp,16
    80004398:	00008067          	ret

000000008000439c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    8000439c:	ff010113          	addi	sp,sp,-16
    800043a0:	00113423          	sd	ra,8(sp)
    800043a4:	00813023          	sd	s0,0(sp)
    800043a8:	01010413          	addi	s0,sp,16
    800043ac:	00007797          	auipc	a5,0x7
    800043b0:	72c78793          	addi	a5,a5,1836 # 8000bad8 <_ZTV14PeriodicThread+0x10>
    800043b4:	00f53023          	sd	a5,0(a0)
    800043b8:	00000097          	auipc	ra,0x0
    800043bc:	b98080e7          	jalr	-1128(ra) # 80003f50 <_ZN6ThreadD1Ev>
    800043c0:	00813083          	ld	ra,8(sp)
    800043c4:	00013403          	ld	s0,0(sp)
    800043c8:	01010113          	addi	sp,sp,16
    800043cc:	00008067          	ret

00000000800043d0 <_ZN14PeriodicThreadD0Ev>:
    800043d0:	fe010113          	addi	sp,sp,-32
    800043d4:	00113c23          	sd	ra,24(sp)
    800043d8:	00813823          	sd	s0,16(sp)
    800043dc:	00913423          	sd	s1,8(sp)
    800043e0:	02010413          	addi	s0,sp,32
    800043e4:	00050493          	mv	s1,a0
    800043e8:	00007797          	auipc	a5,0x7
    800043ec:	6f078793          	addi	a5,a5,1776 # 8000bad8 <_ZTV14PeriodicThread+0x10>
    800043f0:	00f53023          	sd	a5,0(a0)
    800043f4:	00000097          	auipc	ra,0x0
    800043f8:	b5c080e7          	jalr	-1188(ra) # 80003f50 <_ZN6ThreadD1Ev>
    800043fc:	00048513          	mv	a0,s1
    80004400:	00000097          	auipc	ra,0x0
    80004404:	bf8080e7          	jalr	-1032(ra) # 80003ff8 <_ZdlPv>
    80004408:	01813083          	ld	ra,24(sp)
    8000440c:	01013403          	ld	s0,16(sp)
    80004410:	00813483          	ld	s1,8(sp)
    80004414:	02010113          	addi	sp,sp,32
    80004418:	00008067          	ret

000000008000441c <_ZN4_semdlEPv>:
//

#include "../h/_sem.hpp"
#include "../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    8000441c:	ff010113          	addi	sp,sp,-16
    80004420:	00113423          	sd	ra,8(sp)
    80004424:	00813023          	sd	s0,0(sp)
    80004428:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    8000442c:	ffffe097          	auipc	ra,0xffffe
    80004430:	018080e7          	jalr	24(ra) # 80002444 <_Z9sem_closeP4_sem>
}
    80004434:	00813083          	ld	ra,8(sp)
    80004438:	00013403          	ld	s0,0(sp)
    8000443c:	01010113          	addi	sp,sp,16
    80004440:	00008067          	ret

0000000080004444 <_ZN5Riscv20initMemoryAllocationEv>:
kmem_cache_t * Riscv::semaphoreCache = nullptr;
void* Riscv::mainPMT = nullptr;
void* Riscv::riscvBuddy = nullptr;

void Riscv::initMemoryAllocation()
{
    80004444:	ff010113          	addi	sp,sp,-16
    80004448:	00113423          	sd	ra,8(sp)
    8000444c:	00813023          	sd	s0,0(sp)
    80004450:	01010413          	addi	s0,sp,16
    size_t totalNumOfBytes = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    80004454:	00007797          	auipc	a5,0x7
    80004458:	7447b783          	ld	a5,1860(a5) # 8000bb98 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000445c:	0007b503          	ld	a0,0(a5)
    80004460:	00007797          	auipc	a5,0x7
    80004464:	7a07b783          	ld	a5,1952(a5) # 8000bc00 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004468:	0007b783          	ld	a5,0(a5)
    8000446c:	40a787b3          	sub	a5,a5,a0
    80004470:	00178793          	addi	a5,a5,1
    size_t bytesForKernel = totalNumOfBytes / 10; //TODO change this if needed
    80004474:	00a00713          	li	a4,10
    80004478:	02e7d7b3          	divu	a5,a5,a4
    size_t numOfBlocks = (bytesForKernel + BLOCK_NUM_OF_BYTES - 1) / BLOCK_NUM_OF_BYTES;
    8000447c:	00001737          	lui	a4,0x1
    80004480:	fff70713          	addi	a4,a4,-1 # fff <_entry-0x7ffff001>
    80004484:	00e787b3          	add	a5,a5,a4

    void* newStartAddr = (void*)((size_t)HEAP_START_ADDR + numOfBlocks*BLOCK_NUM_OF_BYTES);
    80004488:	fffff737          	lui	a4,0xfffff
    8000448c:	00e7f7b3          	and	a5,a5,a4
    MemoryAllocator::initMemory(newStartAddr);
    80004490:	00f50533          	add	a0,a0,a5
    80004494:	00001097          	auipc	ra,0x1
    80004498:	908080e7          	jalr	-1784(ra) # 80004d9c <_ZN15MemoryAllocator10initMemoryEPv>

    //kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    //pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    //semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
}
    8000449c:	00813083          	ld	ra,8(sp)
    800044a0:	00013403          	ld	s0,0(sp)
    800044a4:	01010113          	addi	sp,sp,16
    800044a8:	00008067          	ret

00000000800044ac <_ZN5Riscv17initVirtualMemoryEv>:

void Riscv::initVirtualMemory()
{
    800044ac:	ff010113          	addi	sp,sp,-16
    800044b0:	00813423          	sd	s0,8(sp)
    800044b4:	01010413          	addi	s0,sp,16

    //size_t pmtSize = (1 << 9);
    //size_t descSize = 64;
    //size_t

}
    800044b8:	00813403          	ld	s0,8(sp)
    800044bc:	01010113          	addi	sp,sp,16
    800044c0:	00008067          	ret

00000000800044c4 <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    800044c4:	ff010113          	addi	sp,sp,-16
    800044c8:	00813423          	sd	s0,8(sp)
    800044cc:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800044d0:	00200793          	li	a5,2
    800044d4:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    800044d8:	00813403          	ld	s0,8(sp)
    800044dc:	01010113          	addi	sp,sp,16
    800044e0:	00008067          	ret

00000000800044e4 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    800044e4:	ff010113          	addi	sp,sp,-16
    800044e8:	00813423          	sd	s0,8(sp)
    800044ec:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800044f0:	00200793          	li	a5,2
    800044f4:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    800044f8:	00813403          	ld	s0,8(sp)
    800044fc:	01010113          	addi	sp,sp,16
    80004500:	00008067          	ret

0000000080004504 <_ZN5Riscv9endSystemEv>:
{
    80004504:	ff010113          	addi	sp,sp,-16
    80004508:	00113423          	sd	ra,8(sp)
    8000450c:	00813023          	sd	s0,0(sp)
    80004510:	01010413          	addi	s0,sp,16
    disableInterrupts();
    80004514:	00000097          	auipc	ra,0x0
    80004518:	fd0080e7          	jalr	-48(ra) # 800044e4 <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    8000451c:	00100793          	li	a5,1
    80004520:	0000f717          	auipc	a4,0xf
    80004524:	7cf70423          	sb	a5,1992(a4) # 80013ce8 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    80004528:	fffff097          	auipc	ra,0xfffff
    8000452c:	56c080e7          	jalr	1388(ra) # 80003a94 <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    80004530:	fe051ce3          	bnez	a0,80004528 <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    80004534:	00007797          	auipc	a5,0x7
    80004538:	6ac7b783          	ld	a5,1708(a5) # 8000bbe0 <_GLOBAL_OFFSET_TABLE_+0x60>
    8000453c:	0007b503          	ld	a0,0(a5)
    80004540:	fffff097          	auipc	ra,0xfffff
    80004544:	500080e7          	jalr	1280(ra) # 80003a40 <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    80004548:	00007797          	auipc	a5,0x7
    8000454c:	6687b783          	ld	a5,1640(a5) # 8000bbb0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80004550:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    80004554:	00000097          	auipc	ra,0x0
    80004558:	f70080e7          	jalr	-144(ra) # 800044c4 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    8000455c:	00007797          	auipc	a5,0x7
    80004560:	6847b783          	ld	a5,1668(a5) # 8000bbe0 <_GLOBAL_OFFSET_TABLE_+0x60>
    80004564:	0007b503          	ld	a0,0(a5)
    80004568:	ffffe097          	auipc	ra,0xffffe
    8000456c:	408080e7          	jalr	1032(ra) # 80002970 <_ZN3PCB10isFinishedEv>
    80004570:	00051863          	bnez	a0,80004580 <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch();
    80004574:	ffffe097          	auipc	ra,0xffffe
    80004578:	e50080e7          	jalr	-432(ra) # 800023c4 <_Z15thread_dispatchv>
    while(!PCB::consolePCB->isFinished())
    8000457c:	fe1ff06f          	j	8000455c <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    80004580:	00000097          	auipc	ra,0x0
    80004584:	f64080e7          	jalr	-156(ra) # 800044e4 <_ZN5Riscv17disableInterruptsEv>
}
    80004588:	00813083          	ld	ra,8(sp)
    8000458c:	00013403          	ld	s0,0(sp)
    80004590:	01010113          	addi	sp,sp,16
    80004594:	00008067          	ret

0000000080004598 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80004598:	ff010113          	addi	sp,sp,-16
    8000459c:	00813423          	sd	s0,8(sp)
    800045a0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800045a4:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800045a8:	10200073          	sret
}
    800045ac:	00813403          	ld	s0,8(sp)
    800045b0:	01010113          	addi	sp,sp,16
    800045b4:	00008067          	ret

00000000800045b8 <_ZN5Riscv14setVirtualAddrEmmm>:

void Riscv::setVirtualAddr(size_t addr, size_t mask, size_t maskLeaf)
{
    800045b8:	fb010113          	addi	sp,sp,-80
    800045bc:	04113423          	sd	ra,72(sp)
    800045c0:	04813023          	sd	s0,64(sp)
    800045c4:	02913c23          	sd	s1,56(sp)
    800045c8:	03213823          	sd	s2,48(sp)
    800045cc:	03313423          	sd	s3,40(sp)
    800045d0:	03413023          	sd	s4,32(sp)
    800045d4:	01513c23          	sd	s5,24(sp)
    800045d8:	01613823          	sd	s6,16(sp)
    800045dc:	01713423          	sd	s7,8(sp)
    800045e0:	05010413          	addi	s0,sp,80
    800045e4:	00058993          	mv	s3,a1
    800045e8:	00060a13          	mv	s4,a2
    size_t l2 = addr >> 30;
    800045ec:	01e55b93          	srli	s7,a0,0x1e
    size_t l1 = (addr >> 21) & (0x1ff);
    800045f0:	01555b13          	srli	s6,a0,0x15
    800045f4:	1ffb7b13          	andi	s6,s6,511
    size_t l0 = (addr >> 12) & (0x1ff);
    800045f8:	00c55493          	srli	s1,a0,0xc
    800045fc:	1ff4f913          	andi	s2,s1,511
    //size_t offset = addr & 0xfff;
    size_t pmt2Desc = ((size_t*)mainPMT)[l2];
    80004600:	003b9b93          	slli	s7,s7,0x3
    80004604:	0000f797          	auipc	a5,0xf
    80004608:	6ec7b783          	ld	a5,1772(a5) # 80013cf0 <_ZN5Riscv7mainPMTE>
    8000460c:	017787b3          	add	a5,a5,s7
    80004610:	0007b503          	ld	a0,0(a5)
    void* pmt1 = nullptr;
    if(pmt2Desc == 0)
    80004614:	06050663          	beqz	a0,80004680 <_ZN5Riscv14setVirtualAddrEmmm+0xc8>
        size_t newDesc = (((size_t)pmt1 >> 12) << 10) | mask;
        ((size_t*)mainPMT)[l2] = newDesc;
    }
    else
    {
        pmt1 = (void*)((pmt2Desc >> 10) << 12);
    80004618:	00a55513          	srli	a0,a0,0xa
    8000461c:	00c51513          	slli	a0,a0,0xc
    }
    size_t pmt1Desc = ((size_t*)pmt1)[l1];
    80004620:	003b1a93          	slli	s5,s6,0x3
    80004624:	01550ab3          	add	s5,a0,s5
    80004628:	000ab503          	ld	a0,0(s5)
    void* pmt0 = nullptr;
    if(pmt1Desc == 0)
    8000462c:	0a050463          	beqz	a0,800046d4 <_ZN5Riscv14setVirtualAddrEmmm+0x11c>
        size_t newDesc = (((size_t)pmt0 >> 12) << 10) | mask;
        ((size_t*)pmt1)[l1] = newDesc;
    }
    else
    {
        pmt0 = (void*)((pmt1Desc >> 10) << 12);
    80004630:	00a55513          	srli	a0,a0,0xa
    80004634:	00c51513          	slli	a0,a0,0xc
    }

    size_t pmt0Desc = ((size_t*)pmt0)[l0];
    80004638:	00391913          	slli	s2,s2,0x3
    8000463c:	01250533          	add	a0,a0,s2
    80004640:	00053783          	ld	a5,0(a0)
    if(pmt0Desc == 0)
    80004644:	00079863          	bnez	a5,80004654 <_ZN5Riscv14setVirtualAddrEmmm+0x9c>
    {
        ((size_t*)pmt0)[l0] = ((addr >> 12) << 10) | maskLeaf;
    80004648:	00a49493          	slli	s1,s1,0xa
    8000464c:	0144ea33          	or	s4,s1,s4
    80004650:	01453023          	sd	s4,0(a0)
    }
}
    80004654:	04813083          	ld	ra,72(sp)
    80004658:	04013403          	ld	s0,64(sp)
    8000465c:	03813483          	ld	s1,56(sp)
    80004660:	03013903          	ld	s2,48(sp)
    80004664:	02813983          	ld	s3,40(sp)
    80004668:	02013a03          	ld	s4,32(sp)
    8000466c:	01813a83          	ld	s5,24(sp)
    80004670:	01013b03          	ld	s6,16(sp)
    80004674:	00813b83          	ld	s7,8(sp)
    80004678:	05010113          	addi	sp,sp,80
    8000467c:	00008067          	ret
        pmt1 = buddy_alloc((buddyAllocator*)riscvBuddy, 1);
    80004680:	00100593          	li	a1,1
    80004684:	0000f517          	auipc	a0,0xf
    80004688:	67453503          	ld	a0,1652(a0) # 80013cf8 <_ZN5Riscv10riscvBuddyE>
    8000468c:	ffffe097          	auipc	ra,0xffffe
    80004690:	7c4080e7          	jalr	1988(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
        for(int i = 0; i < (1 << 9);i++)
    80004694:	00000793          	li	a5,0
    80004698:	1ff00713          	li	a4,511
    8000469c:	00f74c63          	blt	a4,a5,800046b4 <_ZN5Riscv14setVirtualAddrEmmm+0xfc>
            ((size_t*)pmt1)[i] = 0;
    800046a0:	00379713          	slli	a4,a5,0x3
    800046a4:	00e50733          	add	a4,a0,a4
    800046a8:	00073023          	sd	zero,0(a4)
        for(int i = 0; i < (1 << 9);i++)
    800046ac:	0017879b          	addiw	a5,a5,1
    800046b0:	fe9ff06f          	j	80004698 <_ZN5Riscv14setVirtualAddrEmmm+0xe0>
        size_t newDesc = (((size_t)pmt1 >> 12) << 10) | mask;
    800046b4:	00c55793          	srli	a5,a0,0xc
    800046b8:	00a79793          	slli	a5,a5,0xa
    800046bc:	0137e7b3          	or	a5,a5,s3
        ((size_t*)mainPMT)[l2] = newDesc;
    800046c0:	0000f717          	auipc	a4,0xf
    800046c4:	63073703          	ld	a4,1584(a4) # 80013cf0 <_ZN5Riscv7mainPMTE>
    800046c8:	01770bb3          	add	s7,a4,s7
    800046cc:	00fbb023          	sd	a5,0(s7)
    800046d0:	f51ff06f          	j	80004620 <_ZN5Riscv14setVirtualAddrEmmm+0x68>
        pmt0 = buddy_alloc((buddyAllocator*)riscvBuddy, 1);
    800046d4:	00100593          	li	a1,1
    800046d8:	0000f517          	auipc	a0,0xf
    800046dc:	62053503          	ld	a0,1568(a0) # 80013cf8 <_ZN5Riscv10riscvBuddyE>
    800046e0:	ffffe097          	auipc	ra,0xffffe
    800046e4:	770080e7          	jalr	1904(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
        for(int i = 0; i < (1 << 9);i++)
    800046e8:	00000793          	li	a5,0
    800046ec:	1ff00713          	li	a4,511
    800046f0:	00f74c63          	blt	a4,a5,80004708 <_ZN5Riscv14setVirtualAddrEmmm+0x150>
            ((size_t*)pmt0)[i] = 0;
    800046f4:	00379713          	slli	a4,a5,0x3
    800046f8:	00e50733          	add	a4,a0,a4
    800046fc:	00073023          	sd	zero,0(a4)
        for(int i = 0; i < (1 << 9);i++)
    80004700:	0017879b          	addiw	a5,a5,1
    80004704:	fe9ff06f          	j	800046ec <_ZN5Riscv14setVirtualAddrEmmm+0x134>
        size_t newDesc = (((size_t)pmt0 >> 12) << 10) | mask;
    80004708:	00c55793          	srli	a5,a0,0xc
    8000470c:	00a79793          	slli	a5,a5,0xa
    80004710:	0137e9b3          	or	s3,a5,s3
        ((size_t*)pmt1)[l1] = newDesc;
    80004714:	013ab023          	sd	s3,0(s5)
    80004718:	f21ff06f          	j	80004638 <_ZN5Riscv14setVirtualAddrEmmm+0x80>

000000008000471c <_ZN5Riscv14addVirtualAddrEm>:

void Riscv::addVirtualAddr(size_t addr)
{
    8000471c:	ff010113          	addi	sp,sp,-16
    80004720:	00113423          	sd	ra,8(sp)
    80004724:	00813023          	sd	s0,0(sp)
    80004728:	01010413          	addi	s0,sp,16
    setVirtualAddr(addr, 0x0, 0xf);
    8000472c:	00f00613          	li	a2,15
    80004730:	00000593          	li	a1,0
    80004734:	00000097          	auipc	ra,0x0
    80004738:	e84080e7          	jalr	-380(ra) # 800045b8 <_ZN5Riscv14setVirtualAddrEmmm>
}
    8000473c:	00813083          	ld	ra,8(sp)
    80004740:	00013403          	ld	s0,0(sp)
    80004744:	01010113          	addi	sp,sp,16
    80004748:	00008067          	ret

000000008000474c <_ZN5Riscv19addVirtualAddrInstrEm>:

void Riscv::addVirtualAddrInstr(size_t addr)
{
    8000474c:	ff010113          	addi	sp,sp,-16
    80004750:	00113423          	sd	ra,8(sp)
    80004754:	00813023          	sd	s0,0(sp)
    80004758:	01010413          	addi	s0,sp,16
    setVirtualAddr(addr, 0x0, 0xf);
    8000475c:	00f00613          	li	a2,15
    80004760:	00000593          	li	a1,0
    80004764:	00000097          	auipc	ra,0x0
    80004768:	e54080e7          	jalr	-428(ra) # 800045b8 <_ZN5Riscv14setVirtualAddrEmmm>
}
    8000476c:	00813083          	ld	ra,8(sp)
    80004770:	00013403          	ld	s0,0(sp)
    80004774:	01010113          	addi	sp,sp,16
    80004778:	00008067          	ret

000000008000477c <_ZN5Riscv10initSystemEv>:
{
    8000477c:	fd010113          	addi	sp,sp,-48
    80004780:	02113423          	sd	ra,40(sp)
    80004784:	02813023          	sd	s0,32(sp)
    80004788:	00913c23          	sd	s1,24(sp)
    8000478c:	01213823          	sd	s2,16(sp)
    80004790:	01313423          	sd	s3,8(sp)
    80004794:	03010413          	addi	s0,sp,48
    w_stvec((uint64)&Riscv::supervisorTrap);
    80004798:	00007797          	auipc	a5,0x7
    8000479c:	4107b783          	ld	a5,1040(a5) # 8000bba8 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    800047a0:	10579073          	csrw	stvec,a5
    riscvBuddy = (void*)getNextBlockAddr((size_t)HEAP_START_ADDR);
    800047a4:	00007917          	auipc	s2,0x7
    800047a8:	3f493903          	ld	s2,1012(s2) # 8000bb98 <_GLOBAL_OFFSET_TABLE_+0x18>
    800047ac:	00093503          	ld	a0,0(s2)
    800047b0:	ffffe097          	auipc	ra,0xffffe
    800047b4:	4c0080e7          	jalr	1216(ra) # 80002c70 <_Z16getNextBlockAddrm>
    800047b8:	0000f497          	auipc	s1,0xf
    800047bc:	53048493          	addi	s1,s1,1328 # 80013ce8 <_ZN5Riscv12finishSystemE>
    800047c0:	00a4b823          	sd	a0,16(s1)
    size_t totalNumOfBytes = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    800047c4:	00093503          	ld	a0,0(s2)
    800047c8:	00007797          	auipc	a5,0x7
    800047cc:	4387b783          	ld	a5,1080(a5) # 8000bc00 <_GLOBAL_OFFSET_TABLE_+0x80>
    800047d0:	0007b783          	ld	a5,0(a5)
    800047d4:	40a787b3          	sub	a5,a5,a0
    800047d8:	00178793          	addi	a5,a5,1
    size_t bytesForKernel = totalNumOfBytes / 6; //TODO change this if needed
    800047dc:	00600713          	li	a4,6
    800047e0:	02e7d7b3          	divu	a5,a5,a4
    size_t numOfBlocks = (bytesForKernel + BLOCK_NUM_OF_BYTES - 1) / BLOCK_NUM_OF_BYTES;
    800047e4:	00001737          	lui	a4,0x1
    800047e8:	fff70713          	addi	a4,a4,-1 # fff <_entry-0x7ffff001>
    800047ec:	00e787b3          	add	a5,a5,a4
    800047f0:	00c7d993          	srli	s3,a5,0xc
    void* newStartAddr = (void*)((size_t)HEAP_START_ADDR + numOfBlocks*BLOCK_NUM_OF_BYTES);
    800047f4:	fffff737          	lui	a4,0xfffff
    800047f8:	00e7f7b3          	and	a5,a5,a4
    MemoryAllocator::initMemory(newStartAddr);
    800047fc:	00f50533          	add	a0,a0,a5
    80004800:	00000097          	auipc	ra,0x0
    80004804:	59c080e7          	jalr	1436(ra) # 80004d9c <_ZN15MemoryAllocator10initMemoryEPv>
    kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    80004808:	0009859b          	sext.w	a1,s3
    8000480c:	00093503          	ld	a0,0(s2)
    80004810:	ffffd097          	auipc	ra,0xffffd
    80004814:	374080e7          	jalr	884(ra) # 80001b84 <_Z9kmem_initPvi>
    pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    80004818:	00000693          	li	a3,0
    8000481c:	00000613          	li	a2,0
    80004820:	06000593          	li	a1,96
    80004824:	00005517          	auipc	a0,0x5
    80004828:	b6c50513          	addi	a0,a0,-1172 # 80009390 <CONSOLE_STATUS+0x380>
    8000482c:	ffffd097          	auipc	ra,0xffffd
    80004830:	4c8080e7          	jalr	1224(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004834:	00a4bc23          	sd	a0,24(s1)
    semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
    80004838:	00000693          	li	a3,0
    8000483c:	00000613          	li	a2,0
    80004840:	01800593          	li	a1,24
    80004844:	00005517          	auipc	a0,0x5
    80004848:	b5c50513          	addi	a0,a0,-1188 # 800093a0 <CONSOLE_STATUS+0x390>
    8000484c:	ffffd097          	auipc	ra,0xffffd
    80004850:	4a8080e7          	jalr	1192(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004854:	02a4b023          	sd	a0,32(s1)
    PCB::initialize();
    80004858:	ffffe097          	auipc	ra,0xffffe
    8000485c:	ff0080e7          	jalr	-16(ra) # 80002848 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80004860:	fffff097          	auipc	ra,0xfffff
    80004864:	a74080e7          	jalr	-1420(ra) # 800032d4 <_ZN8KConsole10initializeEv>
    mainPMT = buddy_alloc((buddyAllocator*)riscvBuddy, 1);
    80004868:	00100593          	li	a1,1
    8000486c:	0104b503          	ld	a0,16(s1)
    80004870:	ffffe097          	auipc	ra,0xffffe
    80004874:	5e0080e7          	jalr	1504(ra) # 80002e50 <_Z11buddy_allocP14buddyAllocatorm>
    80004878:	00a4b423          	sd	a0,8(s1)
    for(size_t i = 0; i < (1 << 9);i++)
    8000487c:	00000793          	li	a5,0
    80004880:	1ff00713          	li	a4,511
    80004884:	02f76063          	bltu	a4,a5,800048a4 <_ZN5Riscv10initSystemEv+0x128>
        ((size_t*)mainPMT)[i] = 0;
    80004888:	00379693          	slli	a3,a5,0x3
    8000488c:	0000f717          	auipc	a4,0xf
    80004890:	46473703          	ld	a4,1124(a4) # 80013cf0 <_ZN5Riscv7mainPMTE>
    80004894:	00d70733          	add	a4,a4,a3
    80004898:	00073023          	sd	zero,0(a4)
    for(size_t i = 0; i < (1 << 9);i++)
    8000489c:	00178793          	addi	a5,a5,1
    800048a0:	fe1ff06f          	j	80004880 <_ZN5Riscv10initSystemEv+0x104>
    KConsole::trapPrintStringInt("main PMT ", (size_t)mainPMT,16);
    800048a4:	01000613          	li	a2,16
    800048a8:	0000f597          	auipc	a1,0xf
    800048ac:	4485b583          	ld	a1,1096(a1) # 80013cf0 <_ZN5Riscv7mainPMTE>
    800048b0:	00005517          	auipc	a0,0x5
    800048b4:	b0850513          	addi	a0,a0,-1272 # 800093b8 <CONSOLE_STATUS+0x3a8>
    800048b8:	fffff097          	auipc	ra,0xfffff
    800048bc:	fa8080e7          	jalr	-88(ra) # 80003860 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    for(size_t addr = 0x80000000; addr < (size_t)HEAP_START_ADDR;addr++)
    800048c0:	00100913          	li	s2,1
    800048c4:	01f91913          	slli	s2,s2,0x1f
    800048c8:	00007797          	auipc	a5,0x7
    800048cc:	2d07b783          	ld	a5,720(a5) # 8000bb98 <_GLOBAL_OFFSET_TABLE_+0x18>
    800048d0:	0007b483          	ld	s1,0(a5)
    800048d4:	00997c63          	bgeu	s2,s1,800048ec <_ZN5Riscv10initSystemEv+0x170>
        addVirtualAddrInstr(addr);
    800048d8:	00090513          	mv	a0,s2
    800048dc:	00000097          	auipc	ra,0x0
    800048e0:	e70080e7          	jalr	-400(ra) # 8000474c <_ZN5Riscv19addVirtualAddrInstrEm>
    for(size_t addr = 0x80000000; addr < (size_t)HEAP_START_ADDR;addr++)
    800048e4:	00190913          	addi	s2,s2,1
    800048e8:	fe1ff06f          	j	800048c8 <_ZN5Riscv10initSystemEv+0x14c>
    for(size_t addr = (size_t)HEAP_START_ADDR;addr < (size_t)HEAP_END_ADDR;addr+=4096)
    800048ec:	00007797          	auipc	a5,0x7
    800048f0:	3147b783          	ld	a5,788(a5) # 8000bc00 <_GLOBAL_OFFSET_TABLE_+0x80>
    800048f4:	0007b783          	ld	a5,0(a5)
    800048f8:	00f4fe63          	bgeu	s1,a5,80004914 <_ZN5Riscv10initSystemEv+0x198>
        addVirtualAddr(addr);
    800048fc:	00048513          	mv	a0,s1
    80004900:	00000097          	auipc	ra,0x0
    80004904:	e1c080e7          	jalr	-484(ra) # 8000471c <_ZN5Riscv14addVirtualAddrEm>
    for(size_t addr = (size_t)HEAP_START_ADDR;addr < (size_t)HEAP_END_ADDR;addr+=4096)
    80004908:	000017b7          	lui	a5,0x1
    8000490c:	00f484b3          	add	s1,s1,a5
    80004910:	fddff06f          	j	800048ec <_ZN5Riscv10initSystemEv+0x170>
    addVirtualAddr((size_t)CONSOLE_RX_DATA);
    80004914:	00007797          	auipc	a5,0x7
    80004918:	2747b783          	ld	a5,628(a5) # 8000bb88 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000491c:	0007b503          	ld	a0,0(a5)
    80004920:	00000097          	auipc	ra,0x0
    80004924:	dfc080e7          	jalr	-516(ra) # 8000471c <_ZN5Riscv14addVirtualAddrEm>
    addVirtualAddr((size_t)CONSOLE_TX_DATA);
    80004928:	00007797          	auipc	a5,0x7
    8000492c:	2907b783          	ld	a5,656(a5) # 8000bbb8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80004930:	0007b503          	ld	a0,0(a5)
    80004934:	00000097          	auipc	ra,0x0
    80004938:	de8080e7          	jalr	-536(ra) # 8000471c <_ZN5Riscv14addVirtualAddrEm>
    addVirtualAddr((size_t)CONSOLE_STATUS);
    8000493c:	00007797          	auipc	a5,0x7
    80004940:	2547b783          	ld	a5,596(a5) # 8000bb90 <_GLOBAL_OFFSET_TABLE_+0x10>
    80004944:	0007b503          	ld	a0,0(a5)
    80004948:	00000097          	auipc	ra,0x0
    8000494c:	dd4080e7          	jalr	-556(ra) # 8000471c <_ZN5Riscv14addVirtualAddrEm>
    addVirtualAddr(0xc201004);
    80004950:	0c201537          	lui	a0,0xc201
    80004954:	00450513          	addi	a0,a0,4 # c201004 <_entry-0x73dfeffc>
    80004958:	00000097          	auipc	ra,0x0
    8000495c:	dc4080e7          	jalr	-572(ra) # 8000471c <_ZN5Riscv14addVirtualAddrEm>
    size_t satp = ((size_t)1 << 63) | ((size_t)mainPMT / BLOCK_SIZE);
    80004960:	0000f797          	auipc	a5,0xf
    80004964:	3907b783          	ld	a5,912(a5) # 80013cf0 <_ZN5Riscv7mainPMTE>
    80004968:	00c7d793          	srli	a5,a5,0xc
    8000496c:	fff00713          	li	a4,-1
    80004970:	03f71713          	slli	a4,a4,0x3f
    80004974:	00e7e7b3          	or	a5,a5,a4
    __asm__ volatile("csrw satp, %0" : :"r"(satp));
    80004978:	18079073          	csrw	satp,a5
}
    8000497c:	02813083          	ld	ra,40(sp)
    80004980:	02013403          	ld	s0,32(sp)
    80004984:	01813483          	ld	s1,24(sp)
    80004988:	01013903          	ld	s2,16(sp)
    8000498c:	00813983          	ld	s3,8(sp)
    80004990:	03010113          	addi	sp,sp,48
    80004994:	00008067          	ret

0000000080004998 <_ZN5Riscv10kernelMainEv>:
    }
}

void Riscv::kernelMain()
{
    if(kernelMainCalled) return;
    80004998:	0000f797          	auipc	a5,0xf
    8000499c:	3787c783          	lbu	a5,888(a5) # 80013d10 <_ZN5Riscv16kernelMainCalledE>
    800049a0:	00078463          	beqz	a5,800049a8 <_ZN5Riscv10kernelMainEv+0x10>
    800049a4:	00008067          	ret
{
    800049a8:	ff010113          	addi	sp,sp,-16
    800049ac:	00113423          	sd	ra,8(sp)
    800049b0:	00813023          	sd	s0,0(sp)
    800049b4:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    800049b8:	00100793          	li	a5,1
    800049bc:	0000f717          	auipc	a4,0xf
    800049c0:	34f70a23          	sb	a5,852(a4) # 80013d10 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    800049c4:	00000097          	auipc	ra,0x0
    800049c8:	db8080e7          	jalr	-584(ra) # 8000477c <_ZN5Riscv10initSystemEv>

    //testOS2();


    enableInterrupts();
    800049cc:	00000097          	auipc	ra,0x0
    800049d0:	af8080e7          	jalr	-1288(ra) # 800044c4 <_ZN5Riscv16enableInterruptsEv>

    while(!PCB::userPCB->isFinished())
    800049d4:	00007797          	auipc	a5,0x7
    800049d8:	2147b783          	ld	a5,532(a5) # 8000bbe8 <_GLOBAL_OFFSET_TABLE_+0x68>
    800049dc:	0007b503          	ld	a0,0(a5)
    800049e0:	ffffe097          	auipc	ra,0xffffe
    800049e4:	f90080e7          	jalr	-112(ra) # 80002970 <_ZN3PCB10isFinishedEv>
    800049e8:	00051863          	bnez	a0,800049f8 <_ZN5Riscv10kernelMainEv+0x60>
    {
        thread_dispatch();
    800049ec:	ffffe097          	auipc	ra,0xffffe
    800049f0:	9d8080e7          	jalr	-1576(ra) # 800023c4 <_Z15thread_dispatchv>
    while(!PCB::userPCB->isFinished())
    800049f4:	fe1ff06f          	j	800049d4 <_ZN5Riscv10kernelMainEv+0x3c>
    }

    endSystem();
    800049f8:	00000097          	auipc	ra,0x0
    800049fc:	b0c080e7          	jalr	-1268(ra) # 80004504 <_ZN5Riscv9endSystemEv>
}
    80004a00:	00813083          	ld	ra,8(sp)
    80004a04:	00013403          	ld	s0,0(sp)
    80004a08:	01010113          	addi	sp,sp,16
    80004a0c:	00008067          	ret

0000000080004a10 <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    80004a10:	ff010113          	addi	sp,sp,-16
    80004a14:	00113423          	sd	ra,8(sp)
    80004a18:	00813023          	sd	s0,0(sp)
    80004a1c:	01010413          	addi	s0,sp,16
    userMain();
    80004a20:	00002097          	auipc	ra,0x2
    80004a24:	96c080e7          	jalr	-1684(ra) # 8000638c <_Z8userMainv>
}
    80004a28:	00813083          	ld	ra,8(sp)
    80004a2c:	00013403          	ld	s0,0(sp)
    80004a30:	01010113          	addi	sp,sp,16
    80004a34:	00008067          	ret

0000000080004a38 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80004a38:	ff010113          	addi	sp,sp,-16
    80004a3c:	00813423          	sd	s0,8(sp)
    80004a40:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80004a44:	00200793          	li	a5,2
    80004a48:	1047b073          	csrc	sie,a5
}
    80004a4c:	00813403          	ld	s0,8(sp)
    80004a50:	01010113          	addi	sp,sp,16
    80004a54:	00008067          	ret

0000000080004a58 <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    80004a58:	ff010113          	addi	sp,sp,-16
    80004a5c:	00813423          	sd	s0,8(sp)
    80004a60:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80004a64:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80004a68:	00007717          	auipc	a4,0x7
    80004a6c:	19073703          	ld	a4,400(a4) # 8000bbf8 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004a70:	00073703          	ld	a4,0(a4)
    80004a74:	01073703          	ld	a4,16(a4)
    80004a78:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80004a7c:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80004a80:	00078593          	mv	a1,a5
}
    80004a84:	00813403          	ld	s0,8(sp)
    80004a88:	01010113          	addi	sp,sp,16
    80004a8c:	00008067          	ret

0000000080004a90 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80004a90:	ff010113          	addi	sp,sp,-16
    80004a94:	00813423          	sd	s0,8(sp)
    80004a98:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80004a9c:	00007797          	auipc	a5,0x7
    80004aa0:	15c7b783          	ld	a5,348(a5) # 8000bbf8 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004aa4:	0007b783          	ld	a5,0(a5)
    80004aa8:	0007c783          	lbu	a5,0(a5)
    80004aac:	00078c63          	beqz	a5,80004ac4 <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80004ab0:	10000793          	li	a5,256
    80004ab4:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80004ab8:	00813403          	ld	s0,8(sp)
    80004abc:	01010113          	addi	sp,sp,16
    80004ac0:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80004ac4:	10000793          	li	a5,256
    80004ac8:	1007b073          	csrc	sstatus,a5
    80004acc:	fedff06f          	j	80004ab8 <_ZN5Riscv14changePrivModeEv+0x28>

0000000080004ad0 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80004ad0:	f9010113          	addi	sp,sp,-112
    80004ad4:	06113423          	sd	ra,104(sp)
    80004ad8:	06813023          	sd	s0,96(sp)
    80004adc:	04913c23          	sd	s1,88(sp)
    80004ae0:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80004ae4:	00070713          	mv	a4,a4
    80004ae8:	00007797          	auipc	a5,0x7
    80004aec:	1307b783          	ld	a5,304(a5) # 8000bc18 <_GLOBAL_OFFSET_TABLE_+0x98>
    80004af0:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80004af4:	00007797          	auipc	a5,0x7
    80004af8:	1047b783          	ld	a5,260(a5) # 8000bbf8 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004afc:	0007b783          	ld	a5,0(a5)
    80004b00:	14002773          	csrr	a4,sscratch
    80004b04:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80004b08:	142027f3          	csrr	a5,scause
    80004b0c:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80004b10:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80004b14:	00f00713          	li	a4,15
    80004b18:	02f76863          	bltu	a4,a5,80004b48 <_ZN5Riscv20handleSupervisorTrapEv+0x78>
    80004b1c:	00200713          	li	a4,2
    80004b20:	10e7e863          	bltu	a5,a4,80004c30 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    80004b24:	00f00713          	li	a4,15
    80004b28:	10f76463          	bltu	a4,a5,80004c30 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    80004b2c:	00279793          	slli	a5,a5,0x2
    80004b30:	00005717          	auipc	a4,0x5
    80004b34:	89470713          	addi	a4,a4,-1900 # 800093c4 <CONSOLE_STATUS+0x3b4>
    80004b38:	00e787b3          	add	a5,a5,a4
    80004b3c:	0007a783          	lw	a5,0(a5)
    80004b40:	00e787b3          	add	a5,a5,a4
    80004b44:	00078067          	jr	a5
    80004b48:	fff00713          	li	a4,-1
    80004b4c:	03f71713          	slli	a4,a4,0x3f
    80004b50:	00170713          	addi	a4,a4,1
    80004b54:	04e78a63          	beq	a5,a4,80004ba8 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
    80004b58:	fff00713          	li	a4,-1
    80004b5c:	03f71713          	slli	a4,a4,0x3f
    80004b60:	00970713          	addi	a4,a4,9
    80004b64:	0ce79663          	bne	a5,a4,80004c30 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            KConsole::getCharactersFromConsole();
    80004b68:	fffff097          	auipc	ra,0xfffff
    80004b6c:	88c080e7          	jalr	-1908(ra) # 800033f4 <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    80004b70:	00002097          	auipc	ra,0x2
    80004b74:	3b4080e7          	jalr	948(ra) # 80006f24 <plic_claim>
    80004b78:	00002097          	auipc	ra,0x2
    80004b7c:	3e4080e7          	jalr	996(ra) # 80006f5c <plic_complete>
            break;
    80004b80:	0b00006f          	j	80004c30 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            __asm__ volatile("csrr %0, stval":"=r"(addrPF));
    80004b84:	14302573          	csrr	a0,stval
            addVirtualAddr(addrPF);
    80004b88:	00000097          	auipc	ra,0x0
    80004b8c:	b94080e7          	jalr	-1132(ra) # 8000471c <_ZN5Riscv14addVirtualAddrEm>
            __asm__ volatile("csrr %0, stval":"=r"(addrPF));
    80004b90:	14302573          	csrr	a0,stval
            addVirtualAddr(addrPF);
    80004b94:	00000097          	auipc	ra,0x0
    80004b98:	b88080e7          	jalr	-1144(ra) # 8000471c <_ZN5Riscv14addVirtualAddrEm>
            __asm__ volatile("csrr %0, stval":"=r"(addrPF));
    80004b9c:	14302573          	csrr	a0,stval
            addVirtualAddrInstr(addrPF);
    80004ba0:	00000097          	auipc	ra,0x0
    80004ba4:	bac080e7          	jalr	-1108(ra) # 8000474c <_ZN5Riscv19addVirtualAddrInstrEm>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80004ba8:	141027f3          	csrr	a5,sepc
    80004bac:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80004bb0:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80004bb4:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80004bb8:	100027f3          	csrr	a5,sstatus
    80004bbc:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80004bc0:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80004bc4:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80004bc8:	00200793          	li	a5,2
    80004bcc:	1447b073          	csrc	sip,a5
            totalTime++;
    80004bd0:	0000f717          	auipc	a4,0xf
    80004bd4:	11870713          	addi	a4,a4,280 # 80013ce8 <_ZN5Riscv12finishSystemE>
    80004bd8:	03073783          	ld	a5,48(a4)
    80004bdc:	00178793          	addi	a5,a5,1
    80004be0:	02f73823          	sd	a5,48(a4)
            PCB::timeSliceCounter++;
    80004be4:	00007497          	auipc	s1,0x7
    80004be8:	fdc4b483          	ld	s1,-36(s1) # 8000bbc0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80004bec:	0004b783          	ld	a5,0(s1)
    80004bf0:	00178793          	addi	a5,a5,1
    80004bf4:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80004bf8:	fffff097          	auipc	ra,0xfffff
    80004bfc:	d38080e7          	jalr	-712(ra) # 80003930 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80004c00:	00007797          	auipc	a5,0x7
    80004c04:	ff87b783          	ld	a5,-8(a5) # 8000bbf8 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004c08:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80004c0c:	0187b783          	ld	a5,24(a5)
    80004c10:	0004b703          	ld	a4,0(s1)
    80004c14:	02f77863          	bgeu	a4,a5,80004c44 <_ZN5Riscv20handleSupervisorTrapEv+0x174>
            Riscv::w_sstatus(sstatus);
    80004c18:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80004c1c:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80004c20:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80004c24:	14179073          	csrw	sepc,a5
            changePrivMode();
    80004c28:	00000097          	auipc	ra,0x0
    80004c2c:	e68080e7          	jalr	-408(ra) # 80004a90 <_ZN5Riscv14changePrivModeEv>
}
    80004c30:	06813083          	ld	ra,104(sp)
    80004c34:	06013403          	ld	s0,96(sp)
    80004c38:	05813483          	ld	s1,88(sp)
    80004c3c:	07010113          	addi	sp,sp,112
    80004c40:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80004c44:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80004c48:	ffffe097          	auipc	ra,0xffffe
    80004c4c:	adc080e7          	jalr	-1316(ra) # 80002724 <_ZN3PCB8dispatchEv>
    80004c50:	fc9ff06f          	j	80004c18 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    80004c54:	ffffe097          	auipc	ra,0xffffe
    80004c58:	d40080e7          	jalr	-704(ra) # 80002994 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004c5c:	fd5ff06f          	j	80004c30 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004c60:	ffffe097          	auipc	ra,0xffffe
    80004c64:	d34080e7          	jalr	-716(ra) # 80002994 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004c68:	fc9ff06f          	j	80004c30 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004c6c:	ffffe097          	auipc	ra,0xffffe
    80004c70:	d28080e7          	jalr	-728(ra) # 80002994 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004c74:	fbdff06f          	j	80004c30 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80004c78:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80004c7c:	14102773          	csrr	a4,sepc
    80004c80:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80004c84:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80004c88:	00470713          	addi	a4,a4,4
    80004c8c:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80004c90:	10002773          	csrr	a4,sstatus
    80004c94:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80004c98:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80004c9c:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80004ca0:	04300713          	li	a4,67
    80004ca4:	02f76463          	bltu	a4,a5,80004ccc <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
    80004ca8:	00279793          	slli	a5,a5,0x2
    80004cac:	00004717          	auipc	a4,0x4
    80004cb0:	75870713          	addi	a4,a4,1880 # 80009404 <CONSOLE_STATUS+0x3f4>
    80004cb4:	00e787b3          	add	a5,a5,a4
    80004cb8:	0007a783          	lw	a5,0(a5)
    80004cbc:	00e787b3          	add	a5,a5,a4
    80004cc0:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    80004cc4:	00000097          	auipc	ra,0x0
    80004cc8:	4f0080e7          	jalr	1264(ra) # 800051b4 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80004ccc:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80004cd0:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80004cd4:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80004cd8:	14179073          	csrw	sepc,a5
            changePrivMode();
    80004cdc:	00000097          	auipc	ra,0x0
    80004ce0:	db4080e7          	jalr	-588(ra) # 80004a90 <_ZN5Riscv14changePrivModeEv>
}
    80004ce4:	f4dff06f          	j	80004c30 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
                    MemoryAllocator::memFreeHandler();
    80004ce8:	00000097          	auipc	ra,0x0
    80004cec:	53c080e7          	jalr	1340(ra) # 80005224 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80004cf0:	fddff06f          	j	80004ccc <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadMakePCBHandler();
    80004cf4:	ffffe097          	auipc	ra,0xffffe
    80004cf8:	e68080e7          	jalr	-408(ra) # 80002b5c <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80004cfc:	fd1ff06f          	j	80004ccc <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadCreateHandler();
    80004d00:	ffffe097          	auipc	ra,0xffffe
    80004d04:	d74080e7          	jalr	-652(ra) # 80002a74 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80004d08:	fc5ff06f          	j	80004ccc <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadStartHandler();
    80004d0c:	ffffe097          	auipc	ra,0xffffe
    80004d10:	e0c080e7          	jalr	-500(ra) # 80002b18 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80004d14:	fb9ff06f          	j	80004ccc <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadDispatchHandler();
    80004d18:	ffffe097          	auipc	ra,0xffffe
    80004d1c:	cc8080e7          	jalr	-824(ra) # 800029e0 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80004d20:	fadff06f          	j	80004ccc <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadExitHandler();
    80004d24:	ffffe097          	auipc	ra,0xffffe
    80004d28:	c70080e7          	jalr	-912(ra) # 80002994 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80004d2c:	fa1ff06f          	j	80004ccc <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadSleepHandler();
    80004d30:	ffffe097          	auipc	ra,0xffffe
    80004d34:	ce0080e7          	jalr	-800(ra) # 80002a10 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80004d38:	f95ff06f          	j	80004ccc <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                     PCB::threadDelPCBHandler();
    80004d3c:	ffffe097          	auipc	ra,0xffffe
    80004d40:	eb8080e7          	jalr	-328(ra) # 80002bf4 <_ZN3PCB19threadDelPCBHandlerEv>
                     break;
    80004d44:	f89ff06f          	j	80004ccc <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semOpenHandler();
    80004d48:	00001097          	auipc	ra,0x1
    80004d4c:	cc4080e7          	jalr	-828(ra) # 80005a0c <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80004d50:	f7dff06f          	j	80004ccc <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semWaitHandler();
    80004d54:	00001097          	auipc	ra,0x1
    80004d58:	d6c080e7          	jalr	-660(ra) # 80005ac0 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80004d5c:	f71ff06f          	j	80004ccc <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semSignalHandler();
    80004d60:	00001097          	auipc	ra,0x1
    80004d64:	db4080e7          	jalr	-588(ra) # 80005b14 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80004d68:	f65ff06f          	j	80004ccc <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semCloseHandler();
    80004d6c:	00001097          	auipc	ra,0x1
    80004d70:	dec080e7          	jalr	-532(ra) # 80005b58 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80004d74:	f59ff06f          	j	80004ccc <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::getcHandler();
    80004d78:	fffff097          	auipc	ra,0xfffff
    80004d7c:	880080e7          	jalr	-1920(ra) # 800035f8 <_ZN8KConsole11getcHandlerEv>
                    break;
    80004d80:	f4dff06f          	j	80004ccc <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::putcHandler();
    80004d84:	fffff097          	auipc	ra,0xfffff
    80004d88:	844080e7          	jalr	-1980(ra) # 800035c8 <_ZN8KConsole11putcHandlerEv>
                    break;
    80004d8c:	f41ff06f          	j	80004ccc <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::getCharHandler();
    80004d90:	fffff097          	auipc	ra,0xfffff
    80004d94:	9c4080e7          	jalr	-1596(ra) # 80003754 <_ZN8KConsole14getCharHandlerEv>
                    break;
    80004d98:	f35ff06f          	j	80004ccc <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>

0000000080004d9c <_ZN15MemoryAllocator10initMemoryEPv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory(void* startAddr)
{
    80004d9c:	ff010113          	addi	sp,sp,-16
    80004da0:	00813423          	sd	s0,8(sp)
    80004da4:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80004da8:	0000f717          	auipc	a4,0xf
    80004dac:	f7872703          	lw	a4,-136(a4) # 80013d20 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004db0:	00100793          	li	a5,1
    80004db4:	02f70c63          	beq	a4,a5,80004dec <_ZN15MemoryAllocator10initMemoryEPv+0x50>
        return;
    memoryInitiliaized = 1;
    80004db8:	0000f797          	auipc	a5,0xf
    80004dbc:	f6878793          	addi	a5,a5,-152 # 80013d20 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004dc0:	00100713          	li	a4,1
    80004dc4:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80004dc8:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)startAddr;
    80004dcc:	00a7b823          	sd	a0,16(a5)
    headFree->next = 0;
    80004dd0:	00053423          	sd	zero,8(a0)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)startAddr  + 1 - sizeof(BlockHeader));
    80004dd4:	00007797          	auipc	a5,0x7
    80004dd8:	e2c7b783          	ld	a5,-468(a5) # 8000bc00 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004ddc:	0007b783          	ld	a5,0(a5)
    80004de0:	40a787b3          	sub	a5,a5,a0
    80004de4:	ff178793          	addi	a5,a5,-15
    80004de8:	00f53023          	sd	a5,0(a0)
}
    80004dec:	00813403          	ld	s0,8(sp)
    80004df0:	01010113          	addi	sp,sp,16
    80004df4:	00008067          	ret

0000000080004df8 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    80004df8:	ff010113          	addi	sp,sp,-16
    80004dfc:	00813423          	sd	s0,8(sp)
    80004e00:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004e04:	0000f797          	auipc	a5,0xf
    80004e08:	f1c7a783          	lw	a5,-228(a5) # 80013d20 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004e0c:	02078a63          	beqz	a5,80004e40 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        return;
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004e10:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    80004e14:	00b53023          	sd	a1,0(a0)
    if(headAllocated == 0)
    80004e18:	0000f797          	auipc	a5,0xf
    80004e1c:	f107b783          	ld	a5,-240(a5) # 80013d28 <_ZN15MemoryAllocator13headAllocatedE>
    80004e20:	02078663          	beqz	a5,80004e4c <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x54>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    80004e24:	00007717          	auipc	a4,0x7
    80004e28:	ddc73703          	ld	a4,-548(a4) # 8000bc00 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004e2c:	00073703          	ld	a4,0(a4)
    80004e30:	02c76463          	bltu	a4,a2,80004e58 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    80004e34:	00863783          	ld	a5,8(a2)
    80004e38:	00f53423          	sd	a5,8(a0)
        allFrag->next = newAllocated;
    80004e3c:	00a63423          	sd	a0,8(a2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    80004e40:	00813403          	ld	s0,8(sp)
    80004e44:	01010113          	addi	sp,sp,16
    80004e48:	00008067          	ret
        headAllocated = newAllocated;
    80004e4c:	0000f797          	auipc	a5,0xf
    80004e50:	eca7be23          	sd	a0,-292(a5) # 80013d28 <_ZN15MemoryAllocator13headAllocatedE>
    80004e54:	fedff06f          	j	80004e40 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        newAllocated->next = headAllocated;
    80004e58:	00f53423          	sd	a5,8(a0)
        headAllocated = newAllocated;
    80004e5c:	0000f797          	auipc	a5,0xf
    80004e60:	eca7b623          	sd	a0,-308(a5) # 80013d28 <_ZN15MemoryAllocator13headAllocatedE>
    80004e64:	fddff06f          	j	80004e40 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>

0000000080004e68 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80004e68:	ff010113          	addi	sp,sp,-16
    80004e6c:	00813423          	sd	s0,8(sp)
    80004e70:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004e74:	0000f797          	auipc	a5,0xf
    80004e78:	eac7a783          	lw	a5,-340(a5) # 80013d20 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004e7c:	02078c63          	beqz	a5,80004eb4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80004e80:	0000f797          	auipc	a5,0xf
    80004e84:	ea87b783          	ld	a5,-344(a5) # 80013d28 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004e88:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    80004e8c:	00b53023          	sd	a1,0(a0)
    BlockHeader* prev = 0;
    80004e90:	00000713          	li	a4,0
    while(curr != 0)
    80004e94:	00078c63          	beqz	a5,80004eac <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004e98:	00f56863          	bltu	a0,a5,80004ea8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x40>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004e9c:	00078713          	mv	a4,a5
        curr = curr->next;
    80004ea0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004ea4:	ff1ff06f          	j	80004e94 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x2c>
            newAllocated->next = curr;
    80004ea8:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    80004eac:	00070a63          	beqz	a4,80004ec0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x58>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80004eb0:	00a73423          	sd	a0,8(a4)
}
    80004eb4:	00813403          	ld	s0,8(sp)
    80004eb8:	01010113          	addi	sp,sp,16
    80004ebc:	00008067          	ret
        headAllocated = newAllocated;
    80004ec0:	0000f797          	auipc	a5,0xf
    80004ec4:	e6a7b423          	sd	a0,-408(a5) # 80013d28 <_ZN15MemoryAllocator13headAllocatedE>
    80004ec8:	fedff06f          	j	80004eb4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>

0000000080004ecc <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    80004ecc:	0000f797          	auipc	a5,0xf
    80004ed0:	e547a783          	lw	a5,-428(a5) # 80013d20 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004ed4:	0e078e63          	beqz	a5,80004fd0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x104>
{
    80004ed8:	fe010113          	addi	sp,sp,-32
    80004edc:	00113c23          	sd	ra,24(sp)
    80004ee0:	00813823          	sd	s0,16(sp)
    80004ee4:	00913423          	sd	s1,8(sp)
    80004ee8:	02010413          	addi	s0,sp,32
    80004eec:	00050593          	mv	a1,a0
        return nullptr;
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004ef0:	0000f497          	auipc	s1,0xf
    80004ef4:	e404b483          	ld	s1,-448(s1) # 80013d30 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80004ef8:	00000713          	li	a4,0
    while(curr != 0)
    80004efc:	0a048e63          	beqz	s1,80004fb8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xec>
    {
        if(curr->size >= size)
    80004f00:	0004b783          	ld	a5,0(s1)
    80004f04:	00b7f863          	bgeu	a5,a1,80004f14 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80004f08:	00048713          	mv	a4,s1
        curr = curr->next;
    80004f0c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004f10:	fedff06f          	j	80004efc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80004f14:	01058693          	addi	a3,a1,16
    80004f18:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    80004f1c:	01078613          	addi	a2,a5,16
    80004f20:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    80004f24:	00007517          	auipc	a0,0x7
    80004f28:	cdc53503          	ld	a0,-804(a0) # 8000bc00 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004f2c:	00053503          	ld	a0,0(a0)
    80004f30:	06d56063          	bltu	a0,a3,80004f90 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    80004f34:	40b78533          	sub	a0,a5,a1
                if(size2 > sizeof(BlockHeader))
    80004f38:	01000813          	li	a6,16
    80004f3c:	02a87663          	bgeu	a6,a0,80004f68 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    80004f40:	0084b783          	ld	a5,8(s1)
    80004f44:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80004f48:	ff050513          	addi	a0,a0,-16
    80004f4c:	00a6b023          	sd	a0,0(a3)
                    if (prev != 0)
    80004f50:	00070663          	beqz	a4,80004f5c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    80004f54:	00d73423          	sd	a3,8(a4)
    80004f58:	0400006f          	j	80004f98 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    80004f5c:	0000f797          	auipc	a5,0xf
    80004f60:	dcd7ba23          	sd	a3,-556(a5) # 80013d30 <_ZN15MemoryAllocator8headFreeE>
    80004f64:	0340006f          	j	80004f98 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    80004f68:	00070a63          	beqz	a4,80004f7c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    80004f6c:	0084b683          	ld	a3,8(s1)
    80004f70:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    80004f74:	00078593          	mv	a1,a5
    80004f78:	0200006f          	j	80004f98 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    80004f7c:	0084b703          	ld	a4,8(s1)
    80004f80:	0000f697          	auipc	a3,0xf
    80004f84:	dae6b823          	sd	a4,-592(a3) # 80013d30 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    80004f88:	00078593          	mv	a1,a5
    80004f8c:	00c0006f          	j	80004f98 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80004f90:	00070e63          	beqz	a4,80004fac <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
                    prev->next = 0;
    80004f94:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    80004f98:	00048513          	mv	a0,s1
    80004f9c:	00000097          	auipc	ra,0x0
    80004fa0:	e5c080e7          	jalr	-420(ra) # 80004df8 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80004fa4:	01048513          	addi	a0,s1,16
            break;
    80004fa8:	0140006f          	j	80004fbc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
                    headFree = 0;
    80004fac:	0000f797          	auipc	a5,0xf
    80004fb0:	d807b223          	sd	zero,-636(a5) # 80013d30 <_ZN15MemoryAllocator8headFreeE>
    80004fb4:	fe5ff06f          	j	80004f98 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    80004fb8:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004fbc:	01813083          	ld	ra,24(sp)
    80004fc0:	01013403          	ld	s0,16(sp)
    80004fc4:	00813483          	ld	s1,8(sp)
    80004fc8:	02010113          	addi	sp,sp,32
    80004fcc:	00008067          	ret
        return nullptr;
    80004fd0:	00000513          	li	a0,0
}
    80004fd4:	00008067          	ret

0000000080004fd8 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80004fd8:	ff010113          	addi	sp,sp,-16
    80004fdc:	00113423          	sd	ra,8(sp)
    80004fe0:	00813023          	sd	s0,0(sp)
    80004fe4:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80004fe8:	00000097          	auipc	ra,0x0
    80004fec:	ee4080e7          	jalr	-284(ra) # 80004ecc <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004ff0:	00813083          	ld	ra,8(sp)
    80004ff4:	00013403          	ld	s0,0(sp)
    80004ff8:	01010113          	addi	sp,sp,16
    80004ffc:	00008067          	ret

0000000080005000 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80005000:	ff010113          	addi	sp,sp,-16
    80005004:	00813423          	sd	s0,8(sp)
    80005008:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    8000500c:	0000f797          	auipc	a5,0xf
    80005010:	d147a783          	lw	a5,-748(a5) # 80013d20 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80005014:	06078263          	beqz	a5,80005078 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80005018:	0000f797          	auipc	a5,0xf
    8000501c:	d187b783          	ld	a5,-744(a5) # 80013d30 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80005020:	00b53023          	sd	a1,0(a0)
    newSegment->next = 0;
    80005024:	00053423          	sd	zero,8(a0)
    BlockHeader* prev = 0;
    80005028:	00000713          	li	a4,0
    while(curr != 0)
    8000502c:	00078c63          	beqz	a5,80005044 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80005030:	00f56863          	bltu	a0,a5,80005040 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x40>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80005034:	00078713          	mv	a4,a5
        curr = curr->next;
    80005038:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000503c:	ff1ff06f          	j	8000502c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x2c>
            newSegment->next = curr;
    80005040:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    80005044:	04070063          	beqz	a4,80005084 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x84>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80005048:	00a73423          	sd	a0,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    8000504c:	00853783          	ld	a5,8(a0)
    80005050:	00078a63          	beqz	a5,80005064 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
    80005054:	00053603          	ld	a2,0(a0)
    80005058:	01060693          	addi	a3,a2,16
    8000505c:	00d506b3          	add	a3,a0,a3
    80005060:	02d78863          	beq	a5,a3,80005090 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x90>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80005064:	00070a63          	beqz	a4,80005078 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
    80005068:	00073683          	ld	a3,0(a4)
    8000506c:	01068793          	addi	a5,a3,16
    80005070:	00f707b3          	add	a5,a4,a5
    80005074:	02a78c63          	beq	a5,a0,800050ac <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80005078:	00813403          	ld	s0,8(sp)
    8000507c:	01010113          	addi	sp,sp,16
    80005080:	00008067          	ret
        headFree = newSegment;
    80005084:	0000f797          	auipc	a5,0xf
    80005088:	caa7b623          	sd	a0,-852(a5) # 80013d30 <_ZN15MemoryAllocator8headFreeE>
    8000508c:	fc1ff06f          	j	8000504c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x4c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80005090:	0007b683          	ld	a3,0(a5)
    80005094:	00d60633          	add	a2,a2,a3
    80005098:	01060613          	addi	a2,a2,16
    8000509c:	00c53023          	sd	a2,0(a0)
        newSegment->next = newSegment->next->next;
    800050a0:	0087b783          	ld	a5,8(a5)
    800050a4:	00f53423          	sd	a5,8(a0)
    800050a8:	fbdff06f          	j	80005064 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    800050ac:	00053783          	ld	a5,0(a0)
    800050b0:	00f686b3          	add	a3,a3,a5
    800050b4:	01068693          	addi	a3,a3,16
    800050b8:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    800050bc:	00853783          	ld	a5,8(a0)
    800050c0:	00f73423          	sd	a5,8(a4)
    800050c4:	fb5ff06f          	j	80005078 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>

00000000800050c8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    800050c8:	0000f797          	auipc	a5,0xf
    800050cc:	c587a783          	lw	a5,-936(a5) # 80013d20 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800050d0:	08078263          	beqz	a5,80005154 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>
{
    800050d4:	fe010113          	addi	sp,sp,-32
    800050d8:	00113c23          	sd	ra,24(sp)
    800050dc:	00813823          	sd	s0,16(sp)
    800050e0:	00913423          	sd	s1,8(sp)
    800050e4:	02010413          	addi	s0,sp,32
        return 1;
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    800050e8:	0000f497          	auipc	s1,0xf
    800050ec:	c404b483          	ld	s1,-960(s1) # 80013d28 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    800050f0:	00000713          	li	a4,0
    while(curr != 0)
    800050f4:	02048a63          	beqz	s1,80005128 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x60>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    800050f8:	01048793          	addi	a5,s1,16
    800050fc:	00a78863          	beq	a5,a0,8000510c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80005100:	00048713          	mv	a4,s1
        curr = curr->next;
    80005104:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80005108:	fedff06f          	j	800050f4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x2c>
            if(prev != 0)
    8000510c:	02070c63          	beqz	a4,80005144 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x7c>
                prev->next = curr->next;
    80005110:	0084b783          	ld	a5,8(s1)
    80005114:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80005118:	0004b583          	ld	a1,0(s1)
    8000511c:	00048513          	mv	a0,s1
    80005120:	00000097          	auipc	ra,0x0
    80005124:	ee0080e7          	jalr	-288(ra) # 80005000 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80005128:	02048a63          	beqz	s1,8000515c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    8000512c:	00000513          	li	a0,0
    else
        return 1;
}
    80005130:	01813083          	ld	ra,24(sp)
    80005134:	01013403          	ld	s0,16(sp)
    80005138:	00813483          	ld	s1,8(sp)
    8000513c:	02010113          	addi	sp,sp,32
    80005140:	00008067          	ret
                headAllocated = curr->next;
    80005144:	0084b783          	ld	a5,8(s1)
    80005148:	0000f717          	auipc	a4,0xf
    8000514c:	bef73023          	sd	a5,-1056(a4) # 80013d28 <_ZN15MemoryAllocator13headAllocatedE>
    80005150:	fc9ff06f          	j	80005118 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x50>
        return 1;
    80005154:	00100513          	li	a0,1
}
    80005158:	00008067          	ret
        return 1;
    8000515c:	00100513          	li	a0,1
    80005160:	fd1ff06f          	j	80005130 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x68>

0000000080005164 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80005164:	ff010113          	addi	sp,sp,-16
    80005168:	00113423          	sd	ra,8(sp)
    8000516c:	00813023          	sd	s0,0(sp)
    80005170:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80005174:	00000097          	auipc	ra,0x0
    80005178:	f54080e7          	jalr	-172(ra) # 800050c8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    8000517c:	00813083          	ld	ra,8(sp)
    80005180:	00013403          	ld	s0,0(sp)
    80005184:	01010113          	addi	sp,sp,16
    80005188:	00008067          	ret

000000008000518c <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    8000518c:	ff010113          	addi	sp,sp,-16
    80005190:	00113423          	sd	ra,8(sp)
    80005194:	00813023          	sd	s0,0(sp)
    80005198:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    8000519c:	00000097          	auipc	ra,0x0
    800051a0:	e3c080e7          	jalr	-452(ra) # 80004fd8 <_ZN15MemoryAllocator9mem_allocEm>
}
    800051a4:	00813083          	ld	ra,8(sp)
    800051a8:	00013403          	ld	s0,0(sp)
    800051ac:	01010113          	addi	sp,sp,16
    800051b0:	00008067          	ret

00000000800051b4 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    800051b4:	ff010113          	addi	sp,sp,-16
    800051b8:	00113423          	sd	ra,8(sp)
    800051bc:	00813023          	sd	s0,0(sp)
    800051c0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    800051c4:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    800051c8:	00651513          	slli	a0,a0,0x6
    800051cc:	00000097          	auipc	ra,0x0
    800051d0:	fc0080e7          	jalr	-64(ra) # 8000518c <_ZN15MemoryAllocator7kmallocEm>
    if(allocatedAddr == nullptr)
    800051d4:	02050063          	beqz	a0,800051f4 <_ZN15MemoryAllocator15memAllocHandlerEv+0x40>
        __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800051d8:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800051dc:	00000097          	auipc	ra,0x0
    800051e0:	87c080e7          	jalr	-1924(ra) # 80004a58 <_ZN5Riscv13w_a0_sscratchEv>
}
    800051e4:	00813083          	ld	ra,8(sp)
    800051e8:	00013403          	ld	s0,0(sp)
    800051ec:	01010113          	addi	sp,sp,16
    800051f0:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    800051f4:	00000513          	li	a0,0
    800051f8:	fe5ff06f          	j	800051dc <_ZN15MemoryAllocator15memAllocHandlerEv+0x28>

00000000800051fc <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    800051fc:	ff010113          	addi	sp,sp,-16
    80005200:	00113423          	sd	ra,8(sp)
    80005204:	00813023          	sd	s0,0(sp)
    80005208:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    8000520c:	00000097          	auipc	ra,0x0
    80005210:	f58080e7          	jalr	-168(ra) # 80005164 <_ZN15MemoryAllocator8mem_freeEPv>
    80005214:	00813083          	ld	ra,8(sp)
    80005218:	00013403          	ld	s0,0(sp)
    8000521c:	01010113          	addi	sp,sp,16
    80005220:	00008067          	ret

0000000080005224 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80005224:	ff010113          	addi	sp,sp,-16
    80005228:	00113423          	sd	ra,8(sp)
    8000522c:	00813023          	sd	s0,0(sp)
    80005230:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80005234:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80005238:	00000097          	auipc	ra,0x0
    8000523c:	fc4080e7          	jalr	-60(ra) # 800051fc <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80005240:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80005244:	00000097          	auipc	ra,0x0
    80005248:	814080e7          	jalr	-2028(ra) # 80004a58 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000524c:	00813083          	ld	ra,8(sp)
    80005250:	00013403          	ld	s0,0(sp)
    80005254:	01010113          	addi	sp,sp,16
    80005258:	00008067          	ret

000000008000525c <_Z12slabInitTestv>:
#include "../h/slabTests.hpp"
#include "../h/KConsole.hpp"

void slabInitTest()
{
    8000525c:	ff010113          	addi	sp,sp,-16
    80005260:	00113423          	sd	ra,8(sp)
    80005264:	00813023          	sd	s0,0(sp)
    80005268:	01010413          	addi	s0,sp,16
    kmem_init((void*)HEAP_START_ADDR, 15);
    8000526c:	00f00593          	li	a1,15
    80005270:	00007797          	auipc	a5,0x7
    80005274:	9287b783          	ld	a5,-1752(a5) # 8000bb98 <_GLOBAL_OFFSET_TABLE_+0x18>
    80005278:	0007b503          	ld	a0,0(a5)
    8000527c:	ffffd097          	auipc	ra,0xffffd
    80005280:	908080e7          	jalr	-1784(ra) # 80001b84 <_Z9kmem_initPvi>
}
    80005284:	00813083          	ld	ra,8(sp)
    80005288:	00013403          	ld	s0,0(sp)
    8000528c:	01010113          	addi	sp,sp,16
    80005290:	00008067          	ret

0000000080005294 <_Z19slabCacheCreateTestv>:

void slabCacheCreateTest()
{
    80005294:	fe010113          	addi	sp,sp,-32
    80005298:	00113c23          	sd	ra,24(sp)
    8000529c:	00813823          	sd	s0,16(sp)
    800052a0:	00913423          	sd	s1,8(sp)
    800052a4:	01213023          	sd	s2,0(sp)
    800052a8:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    800052ac:	00f00593          	li	a1,15
    800052b0:	00007797          	auipc	a5,0x7
    800052b4:	8e87b783          	ld	a5,-1816(a5) # 8000bb98 <_GLOBAL_OFFSET_TABLE_+0x18>
    800052b8:	0007b503          	ld	a0,0(a5)
    800052bc:	ffffd097          	auipc	ra,0xffffd
    800052c0:	8c8080e7          	jalr	-1848(ra) # 80001b84 <_Z9kmem_initPvi>
    kmem_cache_t* cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    800052c4:	00000693          	li	a3,0
    800052c8:	00000613          	li	a2,0
    800052cc:	00a00593          	li	a1,10
    800052d0:	00004517          	auipc	a0,0x4
    800052d4:	24850513          	addi	a0,a0,584 # 80009518 <CONSOLE_STATUS+0x508>
    800052d8:	ffffd097          	auipc	ra,0xffffd
    800052dc:	a1c080e7          	jalr	-1508(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    800052e0:	00050493          	mv	s1,a0
    kmem_cache_t* cache2 = kmem_cache_create("Cache test 2", 10, nullptr,nullptr);
    800052e4:	00000693          	li	a3,0
    800052e8:	00000613          	li	a2,0
    800052ec:	00a00593          	li	a1,10
    800052f0:	00004517          	auipc	a0,0x4
    800052f4:	23850513          	addi	a0,a0,568 # 80009528 <CONSOLE_STATUS+0x518>
    800052f8:	ffffd097          	auipc	ra,0xffffd
    800052fc:	9fc080e7          	jalr	-1540(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80005300:	00050913          	mv	s2,a0
    kmem_cache_t* cache3 = kmem_cache_create("Cache test 3", 10, nullptr,nullptr);
    80005304:	00000693          	li	a3,0
    80005308:	00000613          	li	a2,0
    8000530c:	00a00593          	li	a1,10
    80005310:	00004517          	auipc	a0,0x4
    80005314:	22850513          	addi	a0,a0,552 # 80009538 <CONSOLE_STATUS+0x528>
    80005318:	ffffd097          	auipc	ra,0xffffd
    8000531c:	9dc080e7          	jalr	-1572(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    if(cache && cache2 && cache3)
    80005320:	00048a63          	beqz	s1,80005334 <_Z19slabCacheCreateTestv+0xa0>
    80005324:	00090863          	beqz	s2,80005334 <_Z19slabCacheCreateTestv+0xa0>
    80005328:	00050663          	beqz	a0,80005334 <_Z19slabCacheCreateTestv+0xa0>
        printSlabAllocatorInfo();
    8000532c:	ffffd097          	auipc	ra,0xffffd
    80005330:	c18080e7          	jalr	-1000(ra) # 80001f44 <_Z22printSlabAllocatorInfov>
}
    80005334:	01813083          	ld	ra,24(sp)
    80005338:	01013403          	ld	s0,16(sp)
    8000533c:	00813483          	ld	s1,8(sp)
    80005340:	00013903          	ld	s2,0(sp)
    80005344:	02010113          	addi	sp,sp,32
    80005348:	00008067          	ret

000000008000534c <_Z20slabCacheCreateTest2v>:

void slabCacheCreateTest2()
{
    8000534c:	fe010113          	addi	sp,sp,-32
    80005350:	00113c23          	sd	ra,24(sp)
    80005354:	00813823          	sd	s0,16(sp)
    80005358:	00913423          	sd	s1,8(sp)
    8000535c:	01213023          	sd	s2,0(sp)
    80005360:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80005364:	00f00593          	li	a1,15
    80005368:	00007797          	auipc	a5,0x7
    8000536c:	8307b783          	ld	a5,-2000(a5) # 8000bb98 <_GLOBAL_OFFSET_TABLE_+0x18>
    80005370:	0007b503          	ld	a0,0(a5)
    80005374:	ffffd097          	auipc	ra,0xffffd
    80005378:	810080e7          	jalr	-2032(ra) # 80001b84 <_Z9kmem_initPvi>
    kmem_cache_t * cache = nullptr;
    for(int i = 1;i<=68;i++)
    8000537c:	00100493          	li	s1,1
    kmem_cache_t * cache = nullptr;
    80005380:	00000913          	li	s2,0
    for(int i = 1;i<=68;i++)
    80005384:	04400793          	li	a5,68
    80005388:	0297c663          	blt	a5,s1,800053b4 <_Z20slabCacheCreateTest2v+0x68>
    {
        cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    8000538c:	00000693          	li	a3,0
    80005390:	00000613          	li	a2,0
    80005394:	00a00593          	li	a1,10
    80005398:	00004517          	auipc	a0,0x4
    8000539c:	18050513          	addi	a0,a0,384 # 80009518 <CONSOLE_STATUS+0x508>
    800053a0:	ffffd097          	auipc	ra,0xffffd
    800053a4:	954080e7          	jalr	-1708(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    800053a8:	00050913          	mv	s2,a0
    for(int i = 1;i<=68;i++)
    800053ac:	0014849b          	addiw	s1,s1,1
    800053b0:	fd5ff06f          	j	80005384 <_Z20slabCacheCreateTest2v+0x38>
    }
    printSlabAllocatorInfo();
    800053b4:	ffffd097          	auipc	ra,0xffffd
    800053b8:	b90080e7          	jalr	-1136(ra) # 80001f44 <_Z22printSlabAllocatorInfov>
    kmem_cache_destroy(cache);
    800053bc:	00090513          	mv	a0,s2
    800053c0:	ffffd097          	auipc	ra,0xffffd
    800053c4:	e0c080e7          	jalr	-500(ra) # 800021cc <_Z18kmem_cache_destroyP12kmem_cache_s>
    printSlabAllocatorInfo();
    800053c8:	ffffd097          	auipc	ra,0xffffd
    800053cc:	b7c080e7          	jalr	-1156(ra) # 80001f44 <_Z22printSlabAllocatorInfov>
}
    800053d0:	01813083          	ld	ra,24(sp)
    800053d4:	01013403          	ld	s0,16(sp)
    800053d8:	00813483          	ld	s1,8(sp)
    800053dc:	00013903          	ld	s2,0(sp)
    800053e0:	02010113          	addi	sp,sp,32
    800053e4:	00008067          	ret

00000000800053e8 <_Z6memsetPKvii>:
                                    "tc_1",
                                    "tc_2",
                                    "tc_3",
                                    "tc_4"};

void memset(const void *data, int size, int value) {
    800053e8:	ff010113          	addi	sp,sp,-16
    800053ec:	00813423          	sd	s0,8(sp)
    800053f0:	01010413          	addi	s0,sp,16
    for (int j = 0; j < size; j++) {
    800053f4:	00000793          	li	a5,0
    800053f8:	00b7da63          	bge	a5,a1,8000540c <_Z6memsetPKvii+0x24>
        *((char *)data + j) = value;
    800053fc:	00f50733          	add	a4,a0,a5
    80005400:	00c70023          	sb	a2,0(a4)
    for (int j = 0; j < size; j++) {
    80005404:	0017879b          	addiw	a5,a5,1
    80005408:	ff1ff06f          	j	800053f8 <_Z6memsetPKvii+0x10>
    }
}
    8000540c:	00813403          	ld	s0,8(sp)
    80005410:	01010113          	addi	sp,sp,16
    80005414:	00008067          	ret

0000000080005418 <_Z9constructPv>:

void construct(void *data) {
    80005418:	ff010113          	addi	sp,sp,-16
    8000541c:	00113423          	sd	ra,8(sp)
    80005420:	00813023          	sd	s0,0(sp)
    80005424:	01010413          	addi	s0,sp,16
    //static int i = 1;
    //KConsole::trapPrintInt(i); i++;
    //KConsole::trapPrintString(" Shared object constructed.\n");
    memset(data, shared_size, MASK);
    80005428:	0a500613          	li	a2,165
    8000542c:	00700593          	li	a1,7
    80005430:	00000097          	auipc	ra,0x0
    80005434:	fb8080e7          	jalr	-72(ra) # 800053e8 <_Z6memsetPKvii>
}
    80005438:	00813083          	ld	ra,8(sp)
    8000543c:	00013403          	ld	s0,0(sp)
    80005440:	01010113          	addi	sp,sp,16
    80005444:	00008067          	ret

0000000080005448 <_Z5checkPvm>:

int check(void *data, size_t size) {
    80005448:	ff010113          	addi	sp,sp,-16
    8000544c:	00813423          	sd	s0,8(sp)
    80005450:	01010413          	addi	s0,sp,16
    80005454:	00050613          	mv	a2,a0
    int ret = 1;
    for (size_t i = 0; i < size; i++) {
    80005458:	00000793          	li	a5,0
    int ret = 1;
    8000545c:	00100513          	li	a0,1
    80005460:	0080006f          	j	80005468 <_Z5checkPvm+0x20>
    for (size_t i = 0; i < size; i++) {
    80005464:	00178793          	addi	a5,a5,1
    80005468:	00b7fe63          	bgeu	a5,a1,80005484 <_Z5checkPvm+0x3c>
        if (((unsigned char *)data)[i] != MASK) {
    8000546c:	00f60733          	add	a4,a2,a5
    80005470:	00074683          	lbu	a3,0(a4)
    80005474:	0a500713          	li	a4,165
    80005478:	fee686e3          	beq	a3,a4,80005464 <_Z5checkPvm+0x1c>
            ret = 0;
    8000547c:	00000513          	li	a0,0
    80005480:	fe5ff06f          	j	80005464 <_Z5checkPvm+0x1c>
        }
    }

    return ret;
}
    80005484:	00813403          	ld	s0,8(sp)
    80005488:	01010113          	addi	sp,sp,16
    8000548c:	00008067          	ret

0000000080005490 <_Z4workPv>:
    kmem_cache_t *cache;
    void *data;
};

void work(void* pdata)
{
    80005490:	f8010113          	addi	sp,sp,-128
    80005494:	06113c23          	sd	ra,120(sp)
    80005498:	06813823          	sd	s0,112(sp)
    8000549c:	06913423          	sd	s1,104(sp)
    800054a0:	07213023          	sd	s2,96(sp)
    800054a4:	05313c23          	sd	s3,88(sp)
    800054a8:	05413823          	sd	s4,80(sp)
    800054ac:	05513423          	sd	s5,72(sp)
    800054b0:	05613023          	sd	s6,64(sp)
    800054b4:	03713c23          	sd	s7,56(sp)
    800054b8:	03813823          	sd	s8,48(sp)
    800054bc:	03913423          	sd	s9,40(sp)
    800054c0:	08010413          	addi	s0,sp,128
    struct data_s data = *(struct data_s*) pdata;
    800054c4:	00053c03          	ld	s8,0(a0)
    800054c8:	f9843423          	sd	s8,-120(s0)
    800054cc:	00853783          	ld	a5,8(a0)
    800054d0:	f8f43823          	sd	a5,-112(s0)
    800054d4:	01053783          	ld	a5,16(a0)
    800054d8:	f8f43c23          	sd	a5,-104(s0)
    int size = 0;
    int object_size = data.id + 1;
    800054dc:	000c079b          	sext.w	a5,s8
    800054e0:	001c0c1b          	addiw	s8,s8,1
    kmem_cache_t *cache = kmem_cache_create(CACHE_NAMES[data.id], object_size, 0, 0);
    800054e4:	00379713          	slli	a4,a5,0x3
    800054e8:	00006797          	auipc	a5,0x6
    800054ec:	65878793          	addi	a5,a5,1624 # 8000bb40 <_ZL11CACHE_NAMES>
    800054f0:	00e787b3          	add	a5,a5,a4
    800054f4:	000c0b13          	mv	s6,s8
    800054f8:	00000693          	li	a3,0
    800054fc:	00000613          	li	a2,0
    80005500:	000c0593          	mv	a1,s8
    80005504:	0007b503          	ld	a0,0(a5)
    80005508:	ffffc097          	auipc	ra,0xffffc
    8000550c:	7ec080e7          	jalr	2028(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80005510:	00050a13          	mv	s4,a0

    struct objects_s *objs = (struct objects_s*)(kmalloc(sizeof(struct objects_s) * data.iterations));
    80005514:	f9842b83          	lw	s7,-104(s0)
    80005518:	004b9513          	slli	a0,s7,0x4
    8000551c:	ffffd097          	auipc	ra,0xffffd
    80005520:	b24080e7          	jalr	-1244(ra) # 80002040 <_Z7kmallocm>
    80005524:	00050a93          	mv	s5,a0

    for (int i = 0; i < data.iterations; i++) {
    80005528:	00000493          	li	s1,0
    int size = 0;
    8000552c:	00000993          	li	s3,0
    80005530:	0380006f          	j	80005568 <_Z4workPv+0xd8>
            if (!check(objs[size].data, shared_size)) {
                KConsole::trapPrintString("Value not correct!");
            }
        }
        else {
            objs[size].data = kmem_cache_alloc(cache);
    80005534:	00499913          	slli	s2,s3,0x4
    80005538:	012a8933          	add	s2,s5,s2
    8000553c:	000a0513          	mv	a0,s4
    80005540:	ffffc097          	auipc	ra,0xffffc
    80005544:	67c080e7          	jalr	1660(ra) # 80001bbc <_Z16kmem_cache_allocP12kmem_cache_s>
    80005548:	00a93423          	sd	a0,8(s2)
            objs[size].cache = cache;
    8000554c:	01493023          	sd	s4,0(s2)
            memset(objs[size].data, object_size, MASK);
    80005550:	0a500613          	li	a2,165
    80005554:	000c0593          	mv	a1,s8
    80005558:	00000097          	auipc	ra,0x0
    8000555c:	e90080e7          	jalr	-368(ra) # 800053e8 <_Z6memsetPKvii>
        }
        size++;
    80005560:	0019899b          	addiw	s3,s3,1
    for (int i = 0; i < data.iterations; i++) {
    80005564:	0014849b          	addiw	s1,s1,1
    80005568:	0574da63          	bge	s1,s7,800055bc <_Z4workPv+0x12c>
        if (i % 100 == 0) {
    8000556c:	06400793          	li	a5,100
    80005570:	02f4e7bb          	remw	a5,s1,a5
    80005574:	fc0790e3          	bnez	a5,80005534 <_Z4workPv+0xa4>
            objs[size].data = kmem_cache_alloc(data.shared);
    80005578:	f9043c83          	ld	s9,-112(s0)
    8000557c:	00499913          	slli	s2,s3,0x4
    80005580:	012a8933          	add	s2,s5,s2
    80005584:	000c8513          	mv	a0,s9
    80005588:	ffffc097          	auipc	ra,0xffffc
    8000558c:	634080e7          	jalr	1588(ra) # 80001bbc <_Z16kmem_cache_allocP12kmem_cache_s>
    80005590:	00a93423          	sd	a0,8(s2)
            objs[size].cache = data.shared;
    80005594:	01993023          	sd	s9,0(s2)
            if (!check(objs[size].data, shared_size)) {
    80005598:	00700593          	li	a1,7
    8000559c:	00000097          	auipc	ra,0x0
    800055a0:	eac080e7          	jalr	-340(ra) # 80005448 <_Z5checkPvm>
    800055a4:	fa051ee3          	bnez	a0,80005560 <_Z4workPv+0xd0>
                KConsole::trapPrintString("Value not correct!");
    800055a8:	00004517          	auipc	a0,0x4
    800055ac:	fa050513          	addi	a0,a0,-96 # 80009548 <CONSOLE_STATUS+0x538>
    800055b0:	ffffe097          	auipc	ra,0xffffe
    800055b4:	1d8080e7          	jalr	472(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
    800055b8:	fa9ff06f          	j	80005560 <_Z4workPv+0xd0>
    }

    kmem_cache_info(cache);
    800055bc:	000a0513          	mv	a0,s4
    800055c0:	ffffd097          	auipc	ra,0xffffd
    800055c4:	828080e7          	jalr	-2008(ra) # 80001de8 <_Z15kmem_cache_infoP12kmem_cache_s>
    kmem_cache_info(data.shared);
    800055c8:	f9043503          	ld	a0,-112(s0)
    800055cc:	ffffd097          	auipc	ra,0xffffd
    800055d0:	81c080e7          	jalr	-2020(ra) # 80001de8 <_Z15kmem_cache_infoP12kmem_cache_s>
    //printSlabAllocatorInfo();

    for (int i = 0; i < size; i++) {
    800055d4:	00000913          	li	s2,0
    800055d8:	0300006f          	j	80005608 <_Z4workPv+0x178>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    800055dc:	000b0593          	mv	a1,s6
    800055e0:	0440006f          	j	80005624 <_Z4workPv+0x194>
            KConsole::trapPrintString("Value not correct!");
    800055e4:	00004517          	auipc	a0,0x4
    800055e8:	f6450513          	addi	a0,a0,-156 # 80009548 <CONSOLE_STATUS+0x538>
    800055ec:	ffffe097          	auipc	ra,0xffffe
    800055f0:	19c080e7          	jalr	412(ra) # 80003788 <_ZN8KConsole15trapPrintStringEPKc>
        }
        kmem_cache_free(objs[i].cache, objs[i].data);
    800055f4:	0084b583          	ld	a1,8(s1)
    800055f8:	0004b503          	ld	a0,0(s1)
    800055fc:	ffffc097          	auipc	ra,0xffffc
    80005600:	79c080e7          	jalr	1948(ra) # 80001d98 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    for (int i = 0; i < size; i++) {
    80005604:	0019091b          	addiw	s2,s2,1
    80005608:	03395663          	bge	s2,s3,80005634 <_Z4workPv+0x1a4>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    8000560c:	00491493          	slli	s1,s2,0x4
    80005610:	009a84b3          	add	s1,s5,s1
    80005614:	0084b503          	ld	a0,8(s1)
    80005618:	0004b783          	ld	a5,0(s1)
    8000561c:	fd4780e3          	beq	a5,s4,800055dc <_Z4workPv+0x14c>
    80005620:	00700593          	li	a1,7
    80005624:	00000097          	auipc	ra,0x0
    80005628:	e24080e7          	jalr	-476(ra) # 80005448 <_Z5checkPvm>
    8000562c:	fc0514e3          	bnez	a0,800055f4 <_Z4workPv+0x164>
    80005630:	fb5ff06f          	j	800055e4 <_Z4workPv+0x154>

    //kmem_cache_info(cache);
    //kmem_cache_info(data.shared);
    //printSlabAllocatorInfo();

    kfree(objs);
    80005634:	000a8513          	mv	a0,s5
    80005638:	ffffd097          	auipc	ra,0xffffd
    8000563c:	b0c080e7          	jalr	-1268(ra) # 80002144 <_Z5kfreePKv>
    kmem_cache_destroy(cache);
    80005640:	000a0513          	mv	a0,s4
    80005644:	ffffd097          	auipc	ra,0xffffd
    80005648:	b88080e7          	jalr	-1144(ra) # 800021cc <_Z18kmem_cache_destroyP12kmem_cache_s>

    //printSlabAllocatorInfo();
}
    8000564c:	07813083          	ld	ra,120(sp)
    80005650:	07013403          	ld	s0,112(sp)
    80005654:	06813483          	ld	s1,104(sp)
    80005658:	06013903          	ld	s2,96(sp)
    8000565c:	05813983          	ld	s3,88(sp)
    80005660:	05013a03          	ld	s4,80(sp)
    80005664:	04813a83          	ld	s5,72(sp)
    80005668:	04013b03          	ld	s6,64(sp)
    8000566c:	03813b83          	ld	s7,56(sp)
    80005670:	03013c03          	ld	s8,48(sp)
    80005674:	02813c83          	ld	s9,40(sp)
    80005678:	08010113          	addi	sp,sp,128
    8000567c:	00008067          	ret

0000000080005680 <_Z4runsPFvPvEP6data_si>:

void runs(void(*work)(void*), struct data_s* data, int num) {
    80005680:	fb010113          	addi	sp,sp,-80
    80005684:	04113423          	sd	ra,72(sp)
    80005688:	04813023          	sd	s0,64(sp)
    8000568c:	02913c23          	sd	s1,56(sp)
    80005690:	03213823          	sd	s2,48(sp)
    80005694:	03313423          	sd	s3,40(sp)
    80005698:	05010413          	addi	s0,sp,80
    8000569c:	00050993          	mv	s3,a0
    800056a0:	00058913          	mv	s2,a1
    for (int i = 0; i < RUN_NUM; i++) {
    800056a4:	00000493          	li	s1,0
    800056a8:	00400793          	li	a5,4
    800056ac:	0297c863          	blt	a5,s1,800056dc <_Z4runsPFvPvEP6data_si+0x5c>
        struct data_s private_data;
        private_data = *(struct data_s*) data;
    800056b0:	00093783          	ld	a5,0(s2)
    800056b4:	faf43c23          	sd	a5,-72(s0)
    800056b8:	00893783          	ld	a5,8(s2)
    800056bc:	fcf43023          	sd	a5,-64(s0)
    800056c0:	01093783          	ld	a5,16(s2)
    800056c4:	fcf43423          	sd	a5,-56(s0)
        private_data.id = i;
    800056c8:	fa942c23          	sw	s1,-72(s0)
        work(&private_data);
    800056cc:	fb840513          	addi	a0,s0,-72
    800056d0:	000980e7          	jalr	s3
    for (int i = 0; i < RUN_NUM; i++) {
    800056d4:	0014849b          	addiw	s1,s1,1
    800056d8:	fd1ff06f          	j	800056a8 <_Z4runsPFvPvEP6data_si+0x28>
    }
}
    800056dc:	04813083          	ld	ra,72(sp)
    800056e0:	04013403          	ld	s0,64(sp)
    800056e4:	03813483          	ld	s1,56(sp)
    800056e8:	03013903          	ld	s2,48(sp)
    800056ec:	02813983          	ld	s3,40(sp)
    800056f0:	05010113          	addi	sp,sp,80
    800056f4:	00008067          	ret

00000000800056f8 <_Z7testOS2v>:

void testOS2()
{
    800056f8:	fc010113          	addi	sp,sp,-64
    800056fc:	02113c23          	sd	ra,56(sp)
    80005700:	02813823          	sd	s0,48(sp)
    80005704:	02913423          	sd	s1,40(sp)
    80005708:	04010413          	addi	s0,sp,64
    kmem_cache_t *shared = kmem_cache_create("shared object", shared_size, construct, nullptr);
    8000570c:	00000693          	li	a3,0
    80005710:	00000617          	auipc	a2,0x0
    80005714:	d0860613          	addi	a2,a2,-760 # 80005418 <_Z9constructPv>
    80005718:	00700593          	li	a1,7
    8000571c:	00004517          	auipc	a0,0x4
    80005720:	e4450513          	addi	a0,a0,-444 # 80009560 <CONSOLE_STATUS+0x550>
    80005724:	ffffc097          	auipc	ra,0xffffc
    80005728:	5d0080e7          	jalr	1488(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    8000572c:	00050493          	mv	s1,a0

    struct data_s data;
    data.shared = shared;
    80005730:	fca43823          	sd	a0,-48(s0)
    data.iterations = ITERATIONS;
    80005734:	3e800793          	li	a5,1000
    80005738:	fcf42c23          	sw	a5,-40(s0)
    runs(work, &data, RUN_NUM);
    8000573c:	00500613          	li	a2,5
    80005740:	fc840593          	addi	a1,s0,-56
    80005744:	00000517          	auipc	a0,0x0
    80005748:	d4c50513          	addi	a0,a0,-692 # 80005490 <_Z4workPv>
    8000574c:	00000097          	auipc	ra,0x0
    80005750:	f34080e7          	jalr	-204(ra) # 80005680 <_Z4runsPFvPvEP6data_si>

    kmem_cache_destroy(shared);
    80005754:	00048513          	mv	a0,s1
    80005758:	ffffd097          	auipc	ra,0xffffd
    8000575c:	a74080e7          	jalr	-1420(ra) # 800021cc <_Z18kmem_cache_destroyP12kmem_cache_s>
    80005760:	03813083          	ld	ra,56(sp)
    80005764:	03013403          	ld	s0,48(sp)
    80005768:	02813483          	ld	s1,40(sp)
    8000576c:	04010113          	addi	sp,sp,64
    80005770:	00008067          	ret

0000000080005774 <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    80005774:	ff010113          	addi	sp,sp,-16
    80005778:	00813423          	sd	s0,8(sp)
    8000577c:	01010413          	addi	s0,sp,16
{
    this->val = val;
    80005780:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80005784:	00053423          	sd	zero,8(a0)
    80005788:	00053023          	sd	zero,0(a0)
}
    8000578c:	00813403          	ld	s0,8(sp)
    80005790:	01010113          	addi	sp,sp,16
    80005794:	00008067          	ret

0000000080005798 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80005798:	ff010113          	addi	sp,sp,-16
    8000579c:	00813423          	sd	s0,8(sp)
    800057a0:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    800057a4:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    800057a8:	00053783          	ld	a5,0(a0)
    800057ac:	00078e63          	beqz	a5,800057c8 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    800057b0:	00853783          	ld	a5,8(a0)
    800057b4:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    800057b8:	00b53423          	sd	a1,8(a0)
    }
}
    800057bc:	00813403          	ld	s0,8(sp)
    800057c0:	01010113          	addi	sp,sp,16
    800057c4:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    800057c8:	00b53423          	sd	a1,8(a0)
    800057cc:	00b53023          	sd	a1,0(a0)
    800057d0:	fedff06f          	j	800057bc <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

00000000800057d4 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    800057d4:	ff010113          	addi	sp,sp,-16
    800057d8:	00113423          	sd	ra,8(sp)
    800057dc:	00813023          	sd	s0,0(sp)
    800057e0:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    800057e4:	00006797          	auipc	a5,0x6
    800057e8:	4147b783          	ld	a5,1044(a5) # 8000bbf8 <_GLOBAL_OFFSET_TABLE_+0x78>
    800057ec:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    800057f0:	00200793          	li	a5,2
    800057f4:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    800057f8:	00000097          	auipc	ra,0x0
    800057fc:	fa0080e7          	jalr	-96(ra) # 80005798 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80005800:	ffffd097          	auipc	ra,0xffffd
    80005804:	f24080e7          	jalr	-220(ra) # 80002724 <_ZN3PCB8dispatchEv>
}
    80005808:	00813083          	ld	ra,8(sp)
    8000580c:	00013403          	ld	s0,0(sp)
    80005810:	01010113          	addi	sp,sp,16
    80005814:	00008067          	ret

0000000080005818 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    80005818:	00006797          	auipc	a5,0x6
    8000581c:	3e07b783          	ld	a5,992(a5) # 8000bbf8 <_GLOBAL_OFFSET_TABLE_+0x78>
    80005820:	0007b783          	ld	a5,0(a5)
    80005824:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    80005828:	01052783          	lw	a5,16(a0)
    8000582c:	fff7879b          	addiw	a5,a5,-1
    80005830:	00f52823          	sw	a5,16(a0)
    80005834:	02079713          	slli	a4,a5,0x20
    80005838:	00074663          	bltz	a4,80005844 <_ZN10KSemaphore4waitEv+0x2c>
}
    8000583c:	00000513          	li	a0,0
    80005840:	00008067          	ret
{
    80005844:	ff010113          	addi	sp,sp,-16
    80005848:	00113423          	sd	ra,8(sp)
    8000584c:	00813023          	sd	s0,0(sp)
    80005850:	01010413          	addi	s0,sp,16
        block();
    80005854:	00000097          	auipc	ra,0x0
    80005858:	f80080e7          	jalr	-128(ra) # 800057d4 <_ZN10KSemaphore5blockEv>
}
    8000585c:	00000513          	li	a0,0
    80005860:	00813083          	ld	ra,8(sp)
    80005864:	00013403          	ld	s0,0(sp)
    80005868:	01010113          	addi	sp,sp,16
    8000586c:	00008067          	ret

0000000080005870 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80005870:	ff010113          	addi	sp,sp,-16
    80005874:	00813423          	sd	s0,8(sp)
    80005878:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    8000587c:	00053503          	ld	a0,0(a0)
    80005880:	00813403          	ld	s0,8(sp)
    80005884:	01010113          	addi	sp,sp,16
    80005888:	00008067          	ret

000000008000588c <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    8000588c:	ff010113          	addi	sp,sp,-16
    80005890:	00813423          	sd	s0,8(sp)
    80005894:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80005898:	00053783          	ld	a5,0(a0)
    8000589c:	00078c63          	beqz	a5,800058b4 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    800058a0:	0087b703          	ld	a4,8(a5)
    800058a4:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    800058a8:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    800058ac:	00053783          	ld	a5,0(a0)
    800058b0:	00078863          	beqz	a5,800058c0 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    800058b4:	00813403          	ld	s0,8(sp)
    800058b8:	01010113          	addi	sp,sp,16
    800058bc:	00008067          	ret
        tailBlocked =0;
    800058c0:	00053423          	sd	zero,8(a0)
    800058c4:	ff1ff06f          	j	800058b4 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

00000000800058c8 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    800058c8:	fe010113          	addi	sp,sp,-32
    800058cc:	00113c23          	sd	ra,24(sp)
    800058d0:	00813823          	sd	s0,16(sp)
    800058d4:	00913423          	sd	s1,8(sp)
    800058d8:	01213023          	sd	s2,0(sp)
    800058dc:	02010413          	addi	s0,sp,32
    800058e0:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    800058e4:	00090513          	mv	a0,s2
    800058e8:	00000097          	auipc	ra,0x0
    800058ec:	f88080e7          	jalr	-120(ra) # 80005870 <_ZN10KSemaphore15getFirstBlockedEv>
    800058f0:	00050493          	mv	s1,a0
    800058f4:	02050463          	beqz	a0,8000591c <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    800058f8:	00090513          	mv	a0,s2
    800058fc:	00000097          	auipc	ra,0x0
    80005900:	f90080e7          	jalr	-112(ra) # 8000588c <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    80005904:	00100793          	li	a5,1
    80005908:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    8000590c:	00048513          	mv	a0,s1
    80005910:	ffffe097          	auipc	ra,0xffffe
    80005914:	130080e7          	jalr	304(ra) # 80003a40 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80005918:	fcdff06f          	j	800058e4 <_ZN10KSemaphoreD1Ev+0x1c>
}
    8000591c:	01813083          	ld	ra,24(sp)
    80005920:	01013403          	ld	s0,16(sp)
    80005924:	00813483          	ld	s1,8(sp)
    80005928:	00013903          	ld	s2,0(sp)
    8000592c:	02010113          	addi	sp,sp,32
    80005930:	00008067          	ret

0000000080005934 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80005934:	fe010113          	addi	sp,sp,-32
    80005938:	00113c23          	sd	ra,24(sp)
    8000593c:	00813823          	sd	s0,16(sp)
    80005940:	00913423          	sd	s1,8(sp)
    80005944:	01213023          	sd	s2,0(sp)
    80005948:	02010413          	addi	s0,sp,32
    8000594c:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80005950:	00000097          	auipc	ra,0x0
    80005954:	f20080e7          	jalr	-224(ra) # 80005870 <_ZN10KSemaphore15getFirstBlockedEv>
    80005958:	00050493          	mv	s1,a0
    removeFirstBlocked();
    8000595c:	00090513          	mv	a0,s2
    80005960:	00000097          	auipc	ra,0x0
    80005964:	f2c080e7          	jalr	-212(ra) # 8000588c <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80005968:	00048863          	beqz	s1,80005978 <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    8000596c:	00048513          	mv	a0,s1
    80005970:	ffffe097          	auipc	ra,0xffffe
    80005974:	0d0080e7          	jalr	208(ra) # 80003a40 <_ZN9Scheduler3putEP3PCB>
    }
}
    80005978:	01813083          	ld	ra,24(sp)
    8000597c:	01013403          	ld	s0,16(sp)
    80005980:	00813483          	ld	s1,8(sp)
    80005984:	00013903          	ld	s2,0(sp)
    80005988:	02010113          	addi	sp,sp,32
    8000598c:	00008067          	ret

0000000080005990 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80005990:	01052783          	lw	a5,16(a0)
    80005994:	0017879b          	addiw	a5,a5,1
    80005998:	0007871b          	sext.w	a4,a5
    8000599c:	00f52823          	sw	a5,16(a0)
    800059a0:	00e05663          	blez	a4,800059ac <_ZN10KSemaphore6signalEv+0x1c>
}
    800059a4:	00000513          	li	a0,0
    800059a8:	00008067          	ret
uint64 KSemaphore::signal() {
    800059ac:	ff010113          	addi	sp,sp,-16
    800059b0:	00113423          	sd	ra,8(sp)
    800059b4:	00813023          	sd	s0,0(sp)
    800059b8:	01010413          	addi	s0,sp,16
        unblock();
    800059bc:	00000097          	auipc	ra,0x0
    800059c0:	f78080e7          	jalr	-136(ra) # 80005934 <_ZN10KSemaphore7unblockEv>
}
    800059c4:	00000513          	li	a0,0
    800059c8:	00813083          	ld	ra,8(sp)
    800059cc:	00013403          	ld	s0,0(sp)
    800059d0:	01010113          	addi	sp,sp,16
    800059d4:	00008067          	ret

00000000800059d8 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    800059d8:	ff010113          	addi	sp,sp,-16
    800059dc:	00113423          	sd	ra,8(sp)
    800059e0:	00813023          	sd	s0,0(sp)
    800059e4:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::semaphoreCache);
    800059e8:	00006797          	auipc	a5,0x6
    800059ec:	1b87b783          	ld	a5,440(a5) # 8000bba0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800059f0:	0007b503          	ld	a0,0(a5)
    800059f4:	ffffc097          	auipc	ra,0xffffc
    800059f8:	1c8080e7          	jalr	456(ra) # 80001bbc <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    800059fc:	00813083          	ld	ra,8(sp)
    80005a00:	00013403          	ld	s0,0(sp)
    80005a04:	01010113          	addi	sp,sp,16
    80005a08:	00008067          	ret

0000000080005a0c <_ZN10KSemaphore14semOpenHandlerEv>:
{
    80005a0c:	fd010113          	addi	sp,sp,-48
    80005a10:	02113423          	sd	ra,40(sp)
    80005a14:	02813023          	sd	s0,32(sp)
    80005a18:	00913c23          	sd	s1,24(sp)
    80005a1c:	01213823          	sd	s2,16(sp)
    80005a20:	01313423          	sd	s3,8(sp)
    80005a24:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80005a28:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    80005a2c:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    80005a30:	01800513          	li	a0,24
    80005a34:	00000097          	auipc	ra,0x0
    80005a38:	fa4080e7          	jalr	-92(ra) # 800059d8 <_ZN10KSemaphorenwEm>
    80005a3c:	00050493          	mv	s1,a0
    80005a40:	00050863          	beqz	a0,80005a50 <_ZN10KSemaphore14semOpenHandlerEv+0x44>
    80005a44:	0009859b          	sext.w	a1,s3
    80005a48:	00000097          	auipc	ra,0x0
    80005a4c:	d2c080e7          	jalr	-724(ra) # 80005774 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    80005a50:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    80005a54:	02048663          	beqz	s1,80005a80 <_ZN10KSemaphore14semOpenHandlerEv+0x74>
            __asm__ volatile("li a0, 0");
    80005a58:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80005a5c:	fffff097          	auipc	ra,0xfffff
    80005a60:	ffc080e7          	jalr	-4(ra) # 80004a58 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005a64:	02813083          	ld	ra,40(sp)
    80005a68:	02013403          	ld	s0,32(sp)
    80005a6c:	01813483          	ld	s1,24(sp)
    80005a70:	01013903          	ld	s2,16(sp)
    80005a74:	00813983          	ld	s3,8(sp)
    80005a78:	03010113          	addi	sp,sp,48
    80005a7c:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80005a80:	fff00513          	li	a0,-1
    80005a84:	fd9ff06f          	j	80005a5c <_ZN10KSemaphore14semOpenHandlerEv+0x50>

0000000080005a88 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80005a88:	ff010113          	addi	sp,sp,-16
    80005a8c:	00113423          	sd	ra,8(sp)
    80005a90:	00813023          	sd	s0,0(sp)
    80005a94:	01010413          	addi	s0,sp,16
    80005a98:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::semaphoreCache, p);
    80005a9c:	00006797          	auipc	a5,0x6
    80005aa0:	1047b783          	ld	a5,260(a5) # 8000bba0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80005aa4:	0007b503          	ld	a0,0(a5)
    80005aa8:	ffffc097          	auipc	ra,0xffffc
    80005aac:	2f0080e7          	jalr	752(ra) # 80001d98 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    80005ab0:	00813083          	ld	ra,8(sp)
    80005ab4:	00013403          	ld	s0,0(sp)
    80005ab8:	01010113          	addi	sp,sp,16
    80005abc:	00008067          	ret

0000000080005ac0 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80005ac0:	ff010113          	addi	sp,sp,-16
    80005ac4:	00113423          	sd	ra,8(sp)
    80005ac8:	00813023          	sd	s0,0(sp)
    80005acc:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80005ad0:	00058513          	mv	a0,a1
    kSem->wait();
    80005ad4:	00000097          	auipc	ra,0x0
    80005ad8:	d44080e7          	jalr	-700(ra) # 80005818 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    80005adc:	00006797          	auipc	a5,0x6
    80005ae0:	11c7b783          	ld	a5,284(a5) # 8000bbf8 <_GLOBAL_OFFSET_TABLE_+0x78>
    80005ae4:	0007b783          	ld	a5,0(a5)
    80005ae8:	0587c783          	lbu	a5,88(a5)
    80005aec:	02078063          	beqz	a5,80005b0c <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    80005af0:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    80005af4:	fffff097          	auipc	ra,0xfffff
    80005af8:	f64080e7          	jalr	-156(ra) # 80004a58 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005afc:	00813083          	ld	ra,8(sp)
    80005b00:	00013403          	ld	s0,0(sp)
    80005b04:	01010113          	addi	sp,sp,16
    80005b08:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80005b0c:	00000513          	li	a0,0
    80005b10:	fe5ff06f          	j	80005af4 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

0000000080005b14 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    80005b14:	ff010113          	addi	sp,sp,-16
    80005b18:	00113423          	sd	ra,8(sp)
    80005b1c:	00813023          	sd	s0,0(sp)
    80005b20:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80005b24:	00058513          	mv	a0,a1
    if (kSem == 0)
    80005b28:	02050463          	beqz	a0,80005b50 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    80005b2c:	00000097          	auipc	ra,0x0
    80005b30:	e64080e7          	jalr	-412(ra) # 80005990 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    80005b34:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80005b38:	fffff097          	auipc	ra,0xfffff
    80005b3c:	f20080e7          	jalr	-224(ra) # 80004a58 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005b40:	00813083          	ld	ra,8(sp)
    80005b44:	00013403          	ld	s0,0(sp)
    80005b48:	01010113          	addi	sp,sp,16
    80005b4c:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80005b50:	00100513          	li	a0,1
    80005b54:	fe5ff06f          	j	80005b38 <_ZN10KSemaphore16semSignalHandlerEv+0x24>

0000000080005b58 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80005b58:	fe010113          	addi	sp,sp,-32
    80005b5c:	00113c23          	sd	ra,24(sp)
    80005b60:	00813823          	sd	s0,16(sp)
    80005b64:	00913423          	sd	s1,8(sp)
    80005b68:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80005b6c:	00058493          	mv	s1,a1
    delete kSem;
    80005b70:	00048e63          	beqz	s1,80005b8c <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    80005b74:	00048513          	mv	a0,s1
    80005b78:	00000097          	auipc	ra,0x0
    80005b7c:	d50080e7          	jalr	-688(ra) # 800058c8 <_ZN10KSemaphoreD1Ev>
    80005b80:	00048513          	mv	a0,s1
    80005b84:	00000097          	auipc	ra,0x0
    80005b88:	f04080e7          	jalr	-252(ra) # 80005a88 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80005b8c:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80005b90:	fffff097          	auipc	ra,0xfffff
    80005b94:	ec8080e7          	jalr	-312(ra) # 80004a58 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005b98:	01813083          	ld	ra,24(sp)
    80005b9c:	01013403          	ld	s0,16(sp)
    80005ba0:	00813483          	ld	s1,8(sp)
    80005ba4:	02010113          	addi	sp,sp,32
    80005ba8:	00008067          	ret

0000000080005bac <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005bac:	fe010113          	addi	sp,sp,-32
    80005bb0:	00113c23          	sd	ra,24(sp)
    80005bb4:	00813823          	sd	s0,16(sp)
    80005bb8:	00913423          	sd	s1,8(sp)
    80005bbc:	02010413          	addi	s0,sp,32
    80005bc0:	00050493          	mv	s1,a0
    LOCK();
    80005bc4:	00100613          	li	a2,1
    80005bc8:	00000593          	li	a1,0
    80005bcc:	0000e517          	auipc	a0,0xe
    80005bd0:	16c50513          	addi	a0,a0,364 # 80013d38 <lockPrint>
    80005bd4:	ffffb097          	auipc	ra,0xffffb
    80005bd8:	644080e7          	jalr	1604(ra) # 80001218 <copy_and_swap>
    80005bdc:	fe0514e3          	bnez	a0,80005bc4 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005be0:	0004c503          	lbu	a0,0(s1)
    80005be4:	00050a63          	beqz	a0,80005bf8 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80005be8:	ffffd097          	auipc	ra,0xffffd
    80005bec:	9e0080e7          	jalr	-1568(ra) # 800025c8 <_Z4putcc>
        string++;
    80005bf0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005bf4:	fedff06f          	j	80005be0 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005bf8:	00000613          	li	a2,0
    80005bfc:	00100593          	li	a1,1
    80005c00:	0000e517          	auipc	a0,0xe
    80005c04:	13850513          	addi	a0,a0,312 # 80013d38 <lockPrint>
    80005c08:	ffffb097          	auipc	ra,0xffffb
    80005c0c:	610080e7          	jalr	1552(ra) # 80001218 <copy_and_swap>
    80005c10:	fe0514e3          	bnez	a0,80005bf8 <_Z11printStringPKc+0x4c>
}
    80005c14:	01813083          	ld	ra,24(sp)
    80005c18:	01013403          	ld	s0,16(sp)
    80005c1c:	00813483          	ld	s1,8(sp)
    80005c20:	02010113          	addi	sp,sp,32
    80005c24:	00008067          	ret

0000000080005c28 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005c28:	fd010113          	addi	sp,sp,-48
    80005c2c:	02113423          	sd	ra,40(sp)
    80005c30:	02813023          	sd	s0,32(sp)
    80005c34:	00913c23          	sd	s1,24(sp)
    80005c38:	01213823          	sd	s2,16(sp)
    80005c3c:	01313423          	sd	s3,8(sp)
    80005c40:	01413023          	sd	s4,0(sp)
    80005c44:	03010413          	addi	s0,sp,48
    80005c48:	00050993          	mv	s3,a0
    80005c4c:	00058a13          	mv	s4,a1
    LOCK();
    80005c50:	00100613          	li	a2,1
    80005c54:	00000593          	li	a1,0
    80005c58:	0000e517          	auipc	a0,0xe
    80005c5c:	0e050513          	addi	a0,a0,224 # 80013d38 <lockPrint>
    80005c60:	ffffb097          	auipc	ra,0xffffb
    80005c64:	5b8080e7          	jalr	1464(ra) # 80001218 <copy_and_swap>
    80005c68:	fe0514e3          	bnez	a0,80005c50 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005c6c:	00000913          	li	s2,0
    80005c70:	00090493          	mv	s1,s2
    80005c74:	0019091b          	addiw	s2,s2,1
    80005c78:	03495a63          	bge	s2,s4,80005cac <_Z9getStringPci+0x84>
        cc = getc();
    80005c7c:	ffffd097          	auipc	ra,0xffffd
    80005c80:	924080e7          	jalr	-1756(ra) # 800025a0 <_Z4getcv>
        if(cc < 1)
    80005c84:	02050463          	beqz	a0,80005cac <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005c88:	009984b3          	add	s1,s3,s1
    80005c8c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005c90:	00a00793          	li	a5,10
    80005c94:	00f50a63          	beq	a0,a5,80005ca8 <_Z9getStringPci+0x80>
    80005c98:	00d00793          	li	a5,13
    80005c9c:	fcf51ae3          	bne	a0,a5,80005c70 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005ca0:	00090493          	mv	s1,s2
    80005ca4:	0080006f          	j	80005cac <_Z9getStringPci+0x84>
    80005ca8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005cac:	009984b3          	add	s1,s3,s1
    80005cb0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005cb4:	00000613          	li	a2,0
    80005cb8:	00100593          	li	a1,1
    80005cbc:	0000e517          	auipc	a0,0xe
    80005cc0:	07c50513          	addi	a0,a0,124 # 80013d38 <lockPrint>
    80005cc4:	ffffb097          	auipc	ra,0xffffb
    80005cc8:	554080e7          	jalr	1364(ra) # 80001218 <copy_and_swap>
    80005ccc:	fe0514e3          	bnez	a0,80005cb4 <_Z9getStringPci+0x8c>
    return buf;
}
    80005cd0:	00098513          	mv	a0,s3
    80005cd4:	02813083          	ld	ra,40(sp)
    80005cd8:	02013403          	ld	s0,32(sp)
    80005cdc:	01813483          	ld	s1,24(sp)
    80005ce0:	01013903          	ld	s2,16(sp)
    80005ce4:	00813983          	ld	s3,8(sp)
    80005ce8:	00013a03          	ld	s4,0(sp)
    80005cec:	03010113          	addi	sp,sp,48
    80005cf0:	00008067          	ret

0000000080005cf4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005cf4:	ff010113          	addi	sp,sp,-16
    80005cf8:	00813423          	sd	s0,8(sp)
    80005cfc:	01010413          	addi	s0,sp,16
    80005d00:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005d04:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005d08:	0006c603          	lbu	a2,0(a3)
    80005d0c:	fd06071b          	addiw	a4,a2,-48
    80005d10:	0ff77713          	andi	a4,a4,255
    80005d14:	00900793          	li	a5,9
    80005d18:	02e7e063          	bltu	a5,a4,80005d38 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005d1c:	0025179b          	slliw	a5,a0,0x2
    80005d20:	00a787bb          	addw	a5,a5,a0
    80005d24:	0017979b          	slliw	a5,a5,0x1
    80005d28:	00168693          	addi	a3,a3,1
    80005d2c:	00c787bb          	addw	a5,a5,a2
    80005d30:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005d34:	fd5ff06f          	j	80005d08 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005d38:	00813403          	ld	s0,8(sp)
    80005d3c:	01010113          	addi	sp,sp,16
    80005d40:	00008067          	ret

0000000080005d44 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005d44:	fc010113          	addi	sp,sp,-64
    80005d48:	02113c23          	sd	ra,56(sp)
    80005d4c:	02813823          	sd	s0,48(sp)
    80005d50:	02913423          	sd	s1,40(sp)
    80005d54:	03213023          	sd	s2,32(sp)
    80005d58:	01313c23          	sd	s3,24(sp)
    80005d5c:	04010413          	addi	s0,sp,64
    80005d60:	00050493          	mv	s1,a0
    80005d64:	00058913          	mv	s2,a1
    80005d68:	00060993          	mv	s3,a2
    LOCK();
    80005d6c:	00100613          	li	a2,1
    80005d70:	00000593          	li	a1,0
    80005d74:	0000e517          	auipc	a0,0xe
    80005d78:	fc450513          	addi	a0,a0,-60 # 80013d38 <lockPrint>
    80005d7c:	ffffb097          	auipc	ra,0xffffb
    80005d80:	49c080e7          	jalr	1180(ra) # 80001218 <copy_and_swap>
    80005d84:	fe0514e3          	bnez	a0,80005d6c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005d88:	00098463          	beqz	s3,80005d90 <_Z8printIntiii+0x4c>
    80005d8c:	0804c463          	bltz	s1,80005e14 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005d90:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005d94:	00000593          	li	a1,0
    }

    i = 0;
    80005d98:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005d9c:	0009079b          	sext.w	a5,s2
    80005da0:	0325773b          	remuw	a4,a0,s2
    80005da4:	00048613          	mv	a2,s1
    80005da8:	0014849b          	addiw	s1,s1,1
    80005dac:	02071693          	slli	a3,a4,0x20
    80005db0:	0206d693          	srli	a3,a3,0x20
    80005db4:	00006717          	auipc	a4,0x6
    80005db8:	db470713          	addi	a4,a4,-588 # 8000bb68 <digits>
    80005dbc:	00d70733          	add	a4,a4,a3
    80005dc0:	00074683          	lbu	a3,0(a4)
    80005dc4:	fd040713          	addi	a4,s0,-48
    80005dc8:	00c70733          	add	a4,a4,a2
    80005dcc:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005dd0:	0005071b          	sext.w	a4,a0
    80005dd4:	0325553b          	divuw	a0,a0,s2
    80005dd8:	fcf772e3          	bgeu	a4,a5,80005d9c <_Z8printIntiii+0x58>
    if(neg)
    80005ddc:	00058c63          	beqz	a1,80005df4 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005de0:	fd040793          	addi	a5,s0,-48
    80005de4:	009784b3          	add	s1,a5,s1
    80005de8:	02d00793          	li	a5,45
    80005dec:	fef48823          	sb	a5,-16(s1)
    80005df0:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005df4:	fff4849b          	addiw	s1,s1,-1
    80005df8:	0204c463          	bltz	s1,80005e20 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005dfc:	fd040793          	addi	a5,s0,-48
    80005e00:	009787b3          	add	a5,a5,s1
    80005e04:	ff07c503          	lbu	a0,-16(a5)
    80005e08:	ffffc097          	auipc	ra,0xffffc
    80005e0c:	7c0080e7          	jalr	1984(ra) # 800025c8 <_Z4putcc>
    80005e10:	fe5ff06f          	j	80005df4 <_Z8printIntiii+0xb0>
        x = -xx;
    80005e14:	4090053b          	negw	a0,s1
        neg = 1;
    80005e18:	00100593          	li	a1,1
        x = -xx;
    80005e1c:	f7dff06f          	j	80005d98 <_Z8printIntiii+0x54>

    UNLOCK();
    80005e20:	00000613          	li	a2,0
    80005e24:	00100593          	li	a1,1
    80005e28:	0000e517          	auipc	a0,0xe
    80005e2c:	f1050513          	addi	a0,a0,-240 # 80013d38 <lockPrint>
    80005e30:	ffffb097          	auipc	ra,0xffffb
    80005e34:	3e8080e7          	jalr	1000(ra) # 80001218 <copy_and_swap>
    80005e38:	fe0514e3          	bnez	a0,80005e20 <_Z8printIntiii+0xdc>
}
    80005e3c:	03813083          	ld	ra,56(sp)
    80005e40:	03013403          	ld	s0,48(sp)
    80005e44:	02813483          	ld	s1,40(sp)
    80005e48:	02013903          	ld	s2,32(sp)
    80005e4c:	01813983          	ld	s3,24(sp)
    80005e50:	04010113          	addi	sp,sp,64
    80005e54:	00008067          	ret

0000000080005e58 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005e58:	fd010113          	addi	sp,sp,-48
    80005e5c:	02113423          	sd	ra,40(sp)
    80005e60:	02813023          	sd	s0,32(sp)
    80005e64:	00913c23          	sd	s1,24(sp)
    80005e68:	01213823          	sd	s2,16(sp)
    80005e6c:	01313423          	sd	s3,8(sp)
    80005e70:	03010413          	addi	s0,sp,48
    80005e74:	00050493          	mv	s1,a0
    80005e78:	00058993          	mv	s3,a1
    80005e7c:	0015879b          	addiw	a5,a1,1
    80005e80:	0007851b          	sext.w	a0,a5
    80005e84:	00f4a023          	sw	a5,0(s1)
    80005e88:	0004a823          	sw	zero,16(s1)
    80005e8c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005e90:	00251513          	slli	a0,a0,0x2
    80005e94:	ffffc097          	auipc	ra,0xffffc
    80005e98:	454080e7          	jalr	1108(ra) # 800022e8 <_Z9mem_allocm>
    80005e9c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005ea0:	01000513          	li	a0,16
    80005ea4:	ffffe097          	auipc	ra,0xffffe
    80005ea8:	12c080e7          	jalr	300(ra) # 80003fd0 <_Znwm>
    80005eac:	00050913          	mv	s2,a0
    80005eb0:	00050863          	beqz	a0,80005ec0 <_ZN9BufferCPPC1Ei+0x68>
    80005eb4:	00000593          	li	a1,0
    80005eb8:	ffffe097          	auipc	ra,0xffffe
    80005ebc:	36c080e7          	jalr	876(ra) # 80004224 <_ZN9SemaphoreC1Ej>
    80005ec0:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005ec4:	01000513          	li	a0,16
    80005ec8:	ffffe097          	auipc	ra,0xffffe
    80005ecc:	108080e7          	jalr	264(ra) # 80003fd0 <_Znwm>
    80005ed0:	00050913          	mv	s2,a0
    80005ed4:	00050863          	beqz	a0,80005ee4 <_ZN9BufferCPPC1Ei+0x8c>
    80005ed8:	00098593          	mv	a1,s3
    80005edc:	ffffe097          	auipc	ra,0xffffe
    80005ee0:	348080e7          	jalr	840(ra) # 80004224 <_ZN9SemaphoreC1Ej>
    80005ee4:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80005ee8:	01000513          	li	a0,16
    80005eec:	ffffe097          	auipc	ra,0xffffe
    80005ef0:	0e4080e7          	jalr	228(ra) # 80003fd0 <_Znwm>
    80005ef4:	00050913          	mv	s2,a0
    80005ef8:	00050863          	beqz	a0,80005f08 <_ZN9BufferCPPC1Ei+0xb0>
    80005efc:	00100593          	li	a1,1
    80005f00:	ffffe097          	auipc	ra,0xffffe
    80005f04:	324080e7          	jalr	804(ra) # 80004224 <_ZN9SemaphoreC1Ej>
    80005f08:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005f0c:	01000513          	li	a0,16
    80005f10:	ffffe097          	auipc	ra,0xffffe
    80005f14:	0c0080e7          	jalr	192(ra) # 80003fd0 <_Znwm>
    80005f18:	00050913          	mv	s2,a0
    80005f1c:	00050863          	beqz	a0,80005f2c <_ZN9BufferCPPC1Ei+0xd4>
    80005f20:	00100593          	li	a1,1
    80005f24:	ffffe097          	auipc	ra,0xffffe
    80005f28:	300080e7          	jalr	768(ra) # 80004224 <_ZN9SemaphoreC1Ej>
    80005f2c:	0324b823          	sd	s2,48(s1)
}
    80005f30:	02813083          	ld	ra,40(sp)
    80005f34:	02013403          	ld	s0,32(sp)
    80005f38:	01813483          	ld	s1,24(sp)
    80005f3c:	01013903          	ld	s2,16(sp)
    80005f40:	00813983          	ld	s3,8(sp)
    80005f44:	03010113          	addi	sp,sp,48
    80005f48:	00008067          	ret
    80005f4c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005f50:	00090513          	mv	a0,s2
    80005f54:	ffffe097          	auipc	ra,0xffffe
    80005f58:	0a4080e7          	jalr	164(ra) # 80003ff8 <_ZdlPv>
    80005f5c:	00048513          	mv	a0,s1
    80005f60:	0000f097          	auipc	ra,0xf
    80005f64:	eb8080e7          	jalr	-328(ra) # 80014e18 <_Unwind_Resume>
    80005f68:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005f6c:	00090513          	mv	a0,s2
    80005f70:	ffffe097          	auipc	ra,0xffffe
    80005f74:	088080e7          	jalr	136(ra) # 80003ff8 <_ZdlPv>
    80005f78:	00048513          	mv	a0,s1
    80005f7c:	0000f097          	auipc	ra,0xf
    80005f80:	e9c080e7          	jalr	-356(ra) # 80014e18 <_Unwind_Resume>
    80005f84:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005f88:	00090513          	mv	a0,s2
    80005f8c:	ffffe097          	auipc	ra,0xffffe
    80005f90:	06c080e7          	jalr	108(ra) # 80003ff8 <_ZdlPv>
    80005f94:	00048513          	mv	a0,s1
    80005f98:	0000f097          	auipc	ra,0xf
    80005f9c:	e80080e7          	jalr	-384(ra) # 80014e18 <_Unwind_Resume>
    80005fa0:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005fa4:	00090513          	mv	a0,s2
    80005fa8:	ffffe097          	auipc	ra,0xffffe
    80005fac:	050080e7          	jalr	80(ra) # 80003ff8 <_ZdlPv>
    80005fb0:	00048513          	mv	a0,s1
    80005fb4:	0000f097          	auipc	ra,0xf
    80005fb8:	e64080e7          	jalr	-412(ra) # 80014e18 <_Unwind_Resume>

0000000080005fbc <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005fbc:	fe010113          	addi	sp,sp,-32
    80005fc0:	00113c23          	sd	ra,24(sp)
    80005fc4:	00813823          	sd	s0,16(sp)
    80005fc8:	00913423          	sd	s1,8(sp)
    80005fcc:	01213023          	sd	s2,0(sp)
    80005fd0:	02010413          	addi	s0,sp,32
    80005fd4:	00050493          	mv	s1,a0
    80005fd8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005fdc:	01853503          	ld	a0,24(a0)
    80005fe0:	ffffe097          	auipc	ra,0xffffe
    80005fe4:	20c080e7          	jalr	524(ra) # 800041ec <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005fe8:	0304b503          	ld	a0,48(s1)
    80005fec:	ffffe097          	auipc	ra,0xffffe
    80005ff0:	200080e7          	jalr	512(ra) # 800041ec <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005ff4:	0084b783          	ld	a5,8(s1)
    80005ff8:	0144a703          	lw	a4,20(s1)
    80005ffc:	00271713          	slli	a4,a4,0x2
    80006000:	00e787b3          	add	a5,a5,a4
    80006004:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006008:	0144a783          	lw	a5,20(s1)
    8000600c:	0017879b          	addiw	a5,a5,1
    80006010:	0004a703          	lw	a4,0(s1)
    80006014:	02e7e7bb          	remw	a5,a5,a4
    80006018:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000601c:	0304b503          	ld	a0,48(s1)
    80006020:	ffffe097          	auipc	ra,0xffffe
    80006024:	250080e7          	jalr	592(ra) # 80004270 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006028:	0204b503          	ld	a0,32(s1)
    8000602c:	ffffe097          	auipc	ra,0xffffe
    80006030:	244080e7          	jalr	580(ra) # 80004270 <_ZN9Semaphore6signalEv>

}
    80006034:	01813083          	ld	ra,24(sp)
    80006038:	01013403          	ld	s0,16(sp)
    8000603c:	00813483          	ld	s1,8(sp)
    80006040:	00013903          	ld	s2,0(sp)
    80006044:	02010113          	addi	sp,sp,32
    80006048:	00008067          	ret

000000008000604c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000604c:	fe010113          	addi	sp,sp,-32
    80006050:	00113c23          	sd	ra,24(sp)
    80006054:	00813823          	sd	s0,16(sp)
    80006058:	00913423          	sd	s1,8(sp)
    8000605c:	01213023          	sd	s2,0(sp)
    80006060:	02010413          	addi	s0,sp,32
    80006064:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006068:	02053503          	ld	a0,32(a0)
    8000606c:	ffffe097          	auipc	ra,0xffffe
    80006070:	180080e7          	jalr	384(ra) # 800041ec <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006074:	0284b503          	ld	a0,40(s1)
    80006078:	ffffe097          	auipc	ra,0xffffe
    8000607c:	174080e7          	jalr	372(ra) # 800041ec <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006080:	0084b703          	ld	a4,8(s1)
    80006084:	0104a783          	lw	a5,16(s1)
    80006088:	00279693          	slli	a3,a5,0x2
    8000608c:	00d70733          	add	a4,a4,a3
    80006090:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006094:	0017879b          	addiw	a5,a5,1
    80006098:	0004a703          	lw	a4,0(s1)
    8000609c:	02e7e7bb          	remw	a5,a5,a4
    800060a0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800060a4:	0284b503          	ld	a0,40(s1)
    800060a8:	ffffe097          	auipc	ra,0xffffe
    800060ac:	1c8080e7          	jalr	456(ra) # 80004270 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800060b0:	0184b503          	ld	a0,24(s1)
    800060b4:	ffffe097          	auipc	ra,0xffffe
    800060b8:	1bc080e7          	jalr	444(ra) # 80004270 <_ZN9Semaphore6signalEv>

    return ret;
}
    800060bc:	00090513          	mv	a0,s2
    800060c0:	01813083          	ld	ra,24(sp)
    800060c4:	01013403          	ld	s0,16(sp)
    800060c8:	00813483          	ld	s1,8(sp)
    800060cc:	00013903          	ld	s2,0(sp)
    800060d0:	02010113          	addi	sp,sp,32
    800060d4:	00008067          	ret

00000000800060d8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800060d8:	fe010113          	addi	sp,sp,-32
    800060dc:	00113c23          	sd	ra,24(sp)
    800060e0:	00813823          	sd	s0,16(sp)
    800060e4:	00913423          	sd	s1,8(sp)
    800060e8:	01213023          	sd	s2,0(sp)
    800060ec:	02010413          	addi	s0,sp,32
    800060f0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800060f4:	02853503          	ld	a0,40(a0)
    800060f8:	ffffe097          	auipc	ra,0xffffe
    800060fc:	0f4080e7          	jalr	244(ra) # 800041ec <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006100:	0304b503          	ld	a0,48(s1)
    80006104:	ffffe097          	auipc	ra,0xffffe
    80006108:	0e8080e7          	jalr	232(ra) # 800041ec <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000610c:	0144a783          	lw	a5,20(s1)
    80006110:	0104a903          	lw	s2,16(s1)
    80006114:	0327ce63          	blt	a5,s2,80006150 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006118:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000611c:	0304b503          	ld	a0,48(s1)
    80006120:	ffffe097          	auipc	ra,0xffffe
    80006124:	150080e7          	jalr	336(ra) # 80004270 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006128:	0284b503          	ld	a0,40(s1)
    8000612c:	ffffe097          	auipc	ra,0xffffe
    80006130:	144080e7          	jalr	324(ra) # 80004270 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006134:	00090513          	mv	a0,s2
    80006138:	01813083          	ld	ra,24(sp)
    8000613c:	01013403          	ld	s0,16(sp)
    80006140:	00813483          	ld	s1,8(sp)
    80006144:	00013903          	ld	s2,0(sp)
    80006148:	02010113          	addi	sp,sp,32
    8000614c:	00008067          	ret
        ret = cap - head + tail;
    80006150:	0004a703          	lw	a4,0(s1)
    80006154:	4127093b          	subw	s2,a4,s2
    80006158:	00f9093b          	addw	s2,s2,a5
    8000615c:	fc1ff06f          	j	8000611c <_ZN9BufferCPP6getCntEv+0x44>

0000000080006160 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006160:	fe010113          	addi	sp,sp,-32
    80006164:	00113c23          	sd	ra,24(sp)
    80006168:	00813823          	sd	s0,16(sp)
    8000616c:	00913423          	sd	s1,8(sp)
    80006170:	02010413          	addi	s0,sp,32
    80006174:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006178:	00a00513          	li	a0,10
    8000617c:	ffffe097          	auipc	ra,0xffffe
    80006180:	154080e7          	jalr	340(ra) # 800042d0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006184:	00003517          	auipc	a0,0x3
    80006188:	41450513          	addi	a0,a0,1044 # 80009598 <CONSOLE_STATUS+0x588>
    8000618c:	00000097          	auipc	ra,0x0
    80006190:	a20080e7          	jalr	-1504(ra) # 80005bac <_Z11printStringPKc>
    while (getCnt()) {
    80006194:	00048513          	mv	a0,s1
    80006198:	00000097          	auipc	ra,0x0
    8000619c:	f40080e7          	jalr	-192(ra) # 800060d8 <_ZN9BufferCPP6getCntEv>
    800061a0:	02050c63          	beqz	a0,800061d8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800061a4:	0084b783          	ld	a5,8(s1)
    800061a8:	0104a703          	lw	a4,16(s1)
    800061ac:	00271713          	slli	a4,a4,0x2
    800061b0:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800061b4:	0007c503          	lbu	a0,0(a5)
    800061b8:	ffffe097          	auipc	ra,0xffffe
    800061bc:	118080e7          	jalr	280(ra) # 800042d0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800061c0:	0104a783          	lw	a5,16(s1)
    800061c4:	0017879b          	addiw	a5,a5,1
    800061c8:	0004a703          	lw	a4,0(s1)
    800061cc:	02e7e7bb          	remw	a5,a5,a4
    800061d0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800061d4:	fc1ff06f          	j	80006194 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800061d8:	02100513          	li	a0,33
    800061dc:	ffffe097          	auipc	ra,0xffffe
    800061e0:	0f4080e7          	jalr	244(ra) # 800042d0 <_ZN7Console4putcEc>
    Console::putc('\n');
    800061e4:	00a00513          	li	a0,10
    800061e8:	ffffe097          	auipc	ra,0xffffe
    800061ec:	0e8080e7          	jalr	232(ra) # 800042d0 <_ZN7Console4putcEc>
    mem_free(buffer);
    800061f0:	0084b503          	ld	a0,8(s1)
    800061f4:	ffffc097          	auipc	ra,0xffffc
    800061f8:	124080e7          	jalr	292(ra) # 80002318 <_Z8mem_freePv>
    delete itemAvailable;
    800061fc:	0204b503          	ld	a0,32(s1)
    80006200:	00050863          	beqz	a0,80006210 <_ZN9BufferCPPD1Ev+0xb0>
    80006204:	00053783          	ld	a5,0(a0)
    80006208:	0087b783          	ld	a5,8(a5)
    8000620c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006210:	0184b503          	ld	a0,24(s1)
    80006214:	00050863          	beqz	a0,80006224 <_ZN9BufferCPPD1Ev+0xc4>
    80006218:	00053783          	ld	a5,0(a0)
    8000621c:	0087b783          	ld	a5,8(a5)
    80006220:	000780e7          	jalr	a5
    delete mutexTail;
    80006224:	0304b503          	ld	a0,48(s1)
    80006228:	00050863          	beqz	a0,80006238 <_ZN9BufferCPPD1Ev+0xd8>
    8000622c:	00053783          	ld	a5,0(a0)
    80006230:	0087b783          	ld	a5,8(a5)
    80006234:	000780e7          	jalr	a5
    delete mutexHead;
    80006238:	0284b503          	ld	a0,40(s1)
    8000623c:	00050863          	beqz	a0,8000624c <_ZN9BufferCPPD1Ev+0xec>
    80006240:	00053783          	ld	a5,0(a0)
    80006244:	0087b783          	ld	a5,8(a5)
    80006248:	000780e7          	jalr	a5
}
    8000624c:	01813083          	ld	ra,24(sp)
    80006250:	01013403          	ld	s0,16(sp)
    80006254:	00813483          	ld	s1,8(sp)
    80006258:	02010113          	addi	sp,sp,32
    8000625c:	00008067          	ret

0000000080006260 <_Z9sleepyRunPv>:

#include "printing.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80006260:	fe010113          	addi	sp,sp,-32
    80006264:	00113c23          	sd	ra,24(sp)
    80006268:	00813823          	sd	s0,16(sp)
    8000626c:	00913423          	sd	s1,8(sp)
    80006270:	01213023          	sd	s2,0(sp)
    80006274:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006278:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000627c:	00600493          	li	s1,6
    while (--i > 0) {
    80006280:	fff4849b          	addiw	s1,s1,-1
    80006284:	04905463          	blez	s1,800062cc <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80006288:	00003517          	auipc	a0,0x3
    8000628c:	32850513          	addi	a0,a0,808 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80006290:	00000097          	auipc	ra,0x0
    80006294:	91c080e7          	jalr	-1764(ra) # 80005bac <_Z11printStringPKc>
        printInt(sleep_time);
    80006298:	00000613          	li	a2,0
    8000629c:	00a00593          	li	a1,10
    800062a0:	0009051b          	sext.w	a0,s2
    800062a4:	00000097          	auipc	ra,0x0
    800062a8:	aa0080e7          	jalr	-1376(ra) # 80005d44 <_Z8printIntiii>
        printString(" !\n");
    800062ac:	00003517          	auipc	a0,0x3
    800062b0:	30c50513          	addi	a0,a0,780 # 800095b8 <CONSOLE_STATUS+0x5a8>
    800062b4:	00000097          	auipc	ra,0x0
    800062b8:	8f8080e7          	jalr	-1800(ra) # 80005bac <_Z11printStringPKc>
        time_sleep(sleep_time);
    800062bc:	00090513          	mv	a0,s2
    800062c0:	ffffc097          	auipc	ra,0xffffc
    800062c4:	208080e7          	jalr	520(ra) # 800024c8 <_Z10time_sleepm>
    while (--i > 0) {
    800062c8:	fb9ff06f          	j	80006280 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800062cc:	00a00793          	li	a5,10
    800062d0:	02f95933          	divu	s2,s2,a5
    800062d4:	fff90913          	addi	s2,s2,-1
    800062d8:	0000e797          	auipc	a5,0xe
    800062dc:	a6878793          	addi	a5,a5,-1432 # 80013d40 <finished>
    800062e0:	01278933          	add	s2,a5,s2
    800062e4:	00100793          	li	a5,1
    800062e8:	00f90023          	sb	a5,0(s2)
}
    800062ec:	01813083          	ld	ra,24(sp)
    800062f0:	01013403          	ld	s0,16(sp)
    800062f4:	00813483          	ld	s1,8(sp)
    800062f8:	00013903          	ld	s2,0(sp)
    800062fc:	02010113          	addi	sp,sp,32
    80006300:	00008067          	ret

0000000080006304 <_Z12testSleepingv>:

void testSleeping() {
    80006304:	fc010113          	addi	sp,sp,-64
    80006308:	02113c23          	sd	ra,56(sp)
    8000630c:	02813823          	sd	s0,48(sp)
    80006310:	02913423          	sd	s1,40(sp)
    80006314:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006318:	00a00793          	li	a5,10
    8000631c:	fcf43823          	sd	a5,-48(s0)
    80006320:	01400793          	li	a5,20
    80006324:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006328:	00000493          	li	s1,0
    8000632c:	02c0006f          	j	80006358 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006330:	00349793          	slli	a5,s1,0x3
    80006334:	fd040613          	addi	a2,s0,-48
    80006338:	00f60633          	add	a2,a2,a5
    8000633c:	00000597          	auipc	a1,0x0
    80006340:	f2458593          	addi	a1,a1,-220 # 80006260 <_Z9sleepyRunPv>
    80006344:	fc040513          	addi	a0,s0,-64
    80006348:	00f50533          	add	a0,a0,a5
    8000634c:	ffffc097          	auipc	ra,0xffffc
    80006350:	ff8080e7          	jalr	-8(ra) # 80002344 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006354:	0014849b          	addiw	s1,s1,1
    80006358:	00100793          	li	a5,1
    8000635c:	fc97dae3          	bge	a5,s1,80006330 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006360:	0000e797          	auipc	a5,0xe
    80006364:	9e07c783          	lbu	a5,-1568(a5) # 80013d40 <finished>
    80006368:	fe078ce3          	beqz	a5,80006360 <_Z12testSleepingv+0x5c>
    8000636c:	0000e797          	auipc	a5,0xe
    80006370:	9d57c783          	lbu	a5,-1579(a5) # 80013d41 <finished+0x1>
    80006374:	fe0786e3          	beqz	a5,80006360 <_Z12testSleepingv+0x5c>
}
    80006378:	03813083          	ld	ra,56(sp)
    8000637c:	03013403          	ld	s0,48(sp)
    80006380:	02813483          	ld	s1,40(sp)
    80006384:	04010113          	addi	sp,sp,64
    80006388:	00008067          	ret

000000008000638c <_Z8userMainv>:
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

//#include "test1OS2.hpp"

void userMain()
{
    8000638c:	ff010113          	addi	sp,sp,-16
    80006390:	00813423          	sd	s0,8(sp)
    80006394:	01010413          	addi	s0,sp,16

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    //userMainTest();
    80006398:	00813403          	ld	s0,8(sp)
    8000639c:	01010113          	addi	sp,sp,16
    800063a0:	00008067          	ret

00000000800063a4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800063a4:	fe010113          	addi	sp,sp,-32
    800063a8:	00113c23          	sd	ra,24(sp)
    800063ac:	00813823          	sd	s0,16(sp)
    800063b0:	00913423          	sd	s1,8(sp)
    800063b4:	01213023          	sd	s2,0(sp)
    800063b8:	02010413          	addi	s0,sp,32
    800063bc:	00050493          	mv	s1,a0
    800063c0:	00058913          	mv	s2,a1
    800063c4:	0015879b          	addiw	a5,a1,1
    800063c8:	0007851b          	sext.w	a0,a5
    800063cc:	00f4a023          	sw	a5,0(s1)
    800063d0:	0004a823          	sw	zero,16(s1)
    800063d4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800063d8:	00251513          	slli	a0,a0,0x2
    800063dc:	ffffc097          	auipc	ra,0xffffc
    800063e0:	f0c080e7          	jalr	-244(ra) # 800022e8 <_Z9mem_allocm>
    800063e4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800063e8:	00000593          	li	a1,0
    800063ec:	02048513          	addi	a0,s1,32
    800063f0:	ffffc097          	auipc	ra,0xffffc
    800063f4:	01c080e7          	jalr	28(ra) # 8000240c <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800063f8:	00090593          	mv	a1,s2
    800063fc:	01848513          	addi	a0,s1,24
    80006400:	ffffc097          	auipc	ra,0xffffc
    80006404:	00c080e7          	jalr	12(ra) # 8000240c <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80006408:	00100593          	li	a1,1
    8000640c:	02848513          	addi	a0,s1,40
    80006410:	ffffc097          	auipc	ra,0xffffc
    80006414:	ffc080e7          	jalr	-4(ra) # 8000240c <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006418:	00100593          	li	a1,1
    8000641c:	03048513          	addi	a0,s1,48
    80006420:	ffffc097          	auipc	ra,0xffffc
    80006424:	fec080e7          	jalr	-20(ra) # 8000240c <_Z8sem_openPP4_semj>
}
    80006428:	01813083          	ld	ra,24(sp)
    8000642c:	01013403          	ld	s0,16(sp)
    80006430:	00813483          	ld	s1,8(sp)
    80006434:	00013903          	ld	s2,0(sp)
    80006438:	02010113          	addi	sp,sp,32
    8000643c:	00008067          	ret

0000000080006440 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006440:	fe010113          	addi	sp,sp,-32
    80006444:	00113c23          	sd	ra,24(sp)
    80006448:	00813823          	sd	s0,16(sp)
    8000644c:	00913423          	sd	s1,8(sp)
    80006450:	01213023          	sd	s2,0(sp)
    80006454:	02010413          	addi	s0,sp,32
    80006458:	00050493          	mv	s1,a0
    8000645c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006460:	01853503          	ld	a0,24(a0)
    80006464:	ffffc097          	auipc	ra,0xffffc
    80006468:	00c080e7          	jalr	12(ra) # 80002470 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    8000646c:	0304b503          	ld	a0,48(s1)
    80006470:	ffffc097          	auipc	ra,0xffffc
    80006474:	000080e7          	jalr	ra # 80002470 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006478:	0084b783          	ld	a5,8(s1)
    8000647c:	0144a703          	lw	a4,20(s1)
    80006480:	00271713          	slli	a4,a4,0x2
    80006484:	00e787b3          	add	a5,a5,a4
    80006488:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000648c:	0144a783          	lw	a5,20(s1)
    80006490:	0017879b          	addiw	a5,a5,1
    80006494:	0004a703          	lw	a4,0(s1)
    80006498:	02e7e7bb          	remw	a5,a5,a4
    8000649c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800064a0:	0304b503          	ld	a0,48(s1)
    800064a4:	ffffc097          	auipc	ra,0xffffc
    800064a8:	ff8080e7          	jalr	-8(ra) # 8000249c <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    800064ac:	0204b503          	ld	a0,32(s1)
    800064b0:	ffffc097          	auipc	ra,0xffffc
    800064b4:	fec080e7          	jalr	-20(ra) # 8000249c <_Z10sem_signalP4_sem>

}
    800064b8:	01813083          	ld	ra,24(sp)
    800064bc:	01013403          	ld	s0,16(sp)
    800064c0:	00813483          	ld	s1,8(sp)
    800064c4:	00013903          	ld	s2,0(sp)
    800064c8:	02010113          	addi	sp,sp,32
    800064cc:	00008067          	ret

00000000800064d0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800064d0:	fe010113          	addi	sp,sp,-32
    800064d4:	00113c23          	sd	ra,24(sp)
    800064d8:	00813823          	sd	s0,16(sp)
    800064dc:	00913423          	sd	s1,8(sp)
    800064e0:	01213023          	sd	s2,0(sp)
    800064e4:	02010413          	addi	s0,sp,32
    800064e8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800064ec:	02053503          	ld	a0,32(a0)
    800064f0:	ffffc097          	auipc	ra,0xffffc
    800064f4:	f80080e7          	jalr	-128(ra) # 80002470 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800064f8:	0284b503          	ld	a0,40(s1)
    800064fc:	ffffc097          	auipc	ra,0xffffc
    80006500:	f74080e7          	jalr	-140(ra) # 80002470 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006504:	0084b703          	ld	a4,8(s1)
    80006508:	0104a783          	lw	a5,16(s1)
    8000650c:	00279693          	slli	a3,a5,0x2
    80006510:	00d70733          	add	a4,a4,a3
    80006514:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006518:	0017879b          	addiw	a5,a5,1
    8000651c:	0004a703          	lw	a4,0(s1)
    80006520:	02e7e7bb          	remw	a5,a5,a4
    80006524:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006528:	0284b503          	ld	a0,40(s1)
    8000652c:	ffffc097          	auipc	ra,0xffffc
    80006530:	f70080e7          	jalr	-144(ra) # 8000249c <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006534:	0184b503          	ld	a0,24(s1)
    80006538:	ffffc097          	auipc	ra,0xffffc
    8000653c:	f64080e7          	jalr	-156(ra) # 8000249c <_Z10sem_signalP4_sem>

    return ret;
}
    80006540:	00090513          	mv	a0,s2
    80006544:	01813083          	ld	ra,24(sp)
    80006548:	01013403          	ld	s0,16(sp)
    8000654c:	00813483          	ld	s1,8(sp)
    80006550:	00013903          	ld	s2,0(sp)
    80006554:	02010113          	addi	sp,sp,32
    80006558:	00008067          	ret

000000008000655c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000655c:	fe010113          	addi	sp,sp,-32
    80006560:	00113c23          	sd	ra,24(sp)
    80006564:	00813823          	sd	s0,16(sp)
    80006568:	00913423          	sd	s1,8(sp)
    8000656c:	01213023          	sd	s2,0(sp)
    80006570:	02010413          	addi	s0,sp,32
    80006574:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006578:	02853503          	ld	a0,40(a0)
    8000657c:	ffffc097          	auipc	ra,0xffffc
    80006580:	ef4080e7          	jalr	-268(ra) # 80002470 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006584:	0304b503          	ld	a0,48(s1)
    80006588:	ffffc097          	auipc	ra,0xffffc
    8000658c:	ee8080e7          	jalr	-280(ra) # 80002470 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006590:	0144a783          	lw	a5,20(s1)
    80006594:	0104a903          	lw	s2,16(s1)
    80006598:	0327ce63          	blt	a5,s2,800065d4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000659c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800065a0:	0304b503          	ld	a0,48(s1)
    800065a4:	ffffc097          	auipc	ra,0xffffc
    800065a8:	ef8080e7          	jalr	-264(ra) # 8000249c <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    800065ac:	0284b503          	ld	a0,40(s1)
    800065b0:	ffffc097          	auipc	ra,0xffffc
    800065b4:	eec080e7          	jalr	-276(ra) # 8000249c <_Z10sem_signalP4_sem>

    return ret;
    800065b8:	00090513          	mv	a0,s2
    800065bc:	01813083          	ld	ra,24(sp)
    800065c0:	01013403          	ld	s0,16(sp)
    800065c4:	00813483          	ld	s1,8(sp)
    800065c8:	00013903          	ld	s2,0(sp)
    800065cc:	02010113          	addi	sp,sp,32
    800065d0:	00008067          	ret
        ret = cap - head + tail;
    800065d4:	0004a703          	lw	a4,0(s1)
    800065d8:	4127093b          	subw	s2,a4,s2
    800065dc:	00f9093b          	addw	s2,s2,a5
    800065e0:	fc1ff06f          	j	800065a0 <_ZN6Buffer6getCntEv+0x44>

00000000800065e4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800065e4:	fe010113          	addi	sp,sp,-32
    800065e8:	00113c23          	sd	ra,24(sp)
    800065ec:	00813823          	sd	s0,16(sp)
    800065f0:	00913423          	sd	s1,8(sp)
    800065f4:	02010413          	addi	s0,sp,32
    800065f8:	00050493          	mv	s1,a0
    putc('\n');
    800065fc:	00a00513          	li	a0,10
    80006600:	ffffc097          	auipc	ra,0xffffc
    80006604:	fc8080e7          	jalr	-56(ra) # 800025c8 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006608:	00003517          	auipc	a0,0x3
    8000660c:	f9050513          	addi	a0,a0,-112 # 80009598 <CONSOLE_STATUS+0x588>
    80006610:	fffff097          	auipc	ra,0xfffff
    80006614:	59c080e7          	jalr	1436(ra) # 80005bac <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006618:	00048513          	mv	a0,s1
    8000661c:	00000097          	auipc	ra,0x0
    80006620:	f40080e7          	jalr	-192(ra) # 8000655c <_ZN6Buffer6getCntEv>
    80006624:	02a05c63          	blez	a0,8000665c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006628:	0084b783          	ld	a5,8(s1)
    8000662c:	0104a703          	lw	a4,16(s1)
    80006630:	00271713          	slli	a4,a4,0x2
    80006634:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006638:	0007c503          	lbu	a0,0(a5)
    8000663c:	ffffc097          	auipc	ra,0xffffc
    80006640:	f8c080e7          	jalr	-116(ra) # 800025c8 <_Z4putcc>
        head = (head + 1) % cap;
    80006644:	0104a783          	lw	a5,16(s1)
    80006648:	0017879b          	addiw	a5,a5,1
    8000664c:	0004a703          	lw	a4,0(s1)
    80006650:	02e7e7bb          	remw	a5,a5,a4
    80006654:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006658:	fc1ff06f          	j	80006618 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000665c:	02100513          	li	a0,33
    80006660:	ffffc097          	auipc	ra,0xffffc
    80006664:	f68080e7          	jalr	-152(ra) # 800025c8 <_Z4putcc>
    putc('\n');
    80006668:	00a00513          	li	a0,10
    8000666c:	ffffc097          	auipc	ra,0xffffc
    80006670:	f5c080e7          	jalr	-164(ra) # 800025c8 <_Z4putcc>
    mem_free(buffer);
    80006674:	0084b503          	ld	a0,8(s1)
    80006678:	ffffc097          	auipc	ra,0xffffc
    8000667c:	ca0080e7          	jalr	-864(ra) # 80002318 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006680:	0204b503          	ld	a0,32(s1)
    80006684:	ffffc097          	auipc	ra,0xffffc
    80006688:	dc0080e7          	jalr	-576(ra) # 80002444 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    8000668c:	0184b503          	ld	a0,24(s1)
    80006690:	ffffc097          	auipc	ra,0xffffc
    80006694:	db4080e7          	jalr	-588(ra) # 80002444 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006698:	0304b503          	ld	a0,48(s1)
    8000669c:	ffffc097          	auipc	ra,0xffffc
    800066a0:	da8080e7          	jalr	-600(ra) # 80002444 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    800066a4:	0284b503          	ld	a0,40(s1)
    800066a8:	ffffc097          	auipc	ra,0xffffc
    800066ac:	d9c080e7          	jalr	-612(ra) # 80002444 <_Z9sem_closeP4_sem>
}
    800066b0:	01813083          	ld	ra,24(sp)
    800066b4:	01013403          	ld	s0,16(sp)
    800066b8:	00813483          	ld	s1,8(sp)
    800066bc:	02010113          	addi	sp,sp,32
    800066c0:	00008067          	ret

00000000800066c4 <start>:
    800066c4:	ff010113          	addi	sp,sp,-16
    800066c8:	00813423          	sd	s0,8(sp)
    800066cc:	01010413          	addi	s0,sp,16
    800066d0:	300027f3          	csrr	a5,mstatus
    800066d4:	ffffe737          	lui	a4,0xffffe
    800066d8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffe984f>
    800066dc:	00e7f7b3          	and	a5,a5,a4
    800066e0:	00001737          	lui	a4,0x1
    800066e4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800066e8:	00e7e7b3          	or	a5,a5,a4
    800066ec:	30079073          	csrw	mstatus,a5
    800066f0:	00000797          	auipc	a5,0x0
    800066f4:	16078793          	addi	a5,a5,352 # 80006850 <system_main>
    800066f8:	34179073          	csrw	mepc,a5
    800066fc:	00000793          	li	a5,0
    80006700:	18079073          	csrw	satp,a5
    80006704:	000107b7          	lui	a5,0x10
    80006708:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000670c:	30279073          	csrw	medeleg,a5
    80006710:	30379073          	csrw	mideleg,a5
    80006714:	104027f3          	csrr	a5,sie
    80006718:	2227e793          	ori	a5,a5,546
    8000671c:	10479073          	csrw	sie,a5
    80006720:	fff00793          	li	a5,-1
    80006724:	00a7d793          	srli	a5,a5,0xa
    80006728:	3b079073          	csrw	pmpaddr0,a5
    8000672c:	00f00793          	li	a5,15
    80006730:	3a079073          	csrw	pmpcfg0,a5
    80006734:	f14027f3          	csrr	a5,mhartid
    80006738:	0200c737          	lui	a4,0x200c
    8000673c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006740:	0007869b          	sext.w	a3,a5
    80006744:	00269713          	slli	a4,a3,0x2
    80006748:	000f4637          	lui	a2,0xf4
    8000674c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006750:	00d70733          	add	a4,a4,a3
    80006754:	0037979b          	slliw	a5,a5,0x3
    80006758:	020046b7          	lui	a3,0x2004
    8000675c:	00d787b3          	add	a5,a5,a3
    80006760:	00c585b3          	add	a1,a1,a2
    80006764:	00371693          	slli	a3,a4,0x3
    80006768:	0000d717          	auipc	a4,0xd
    8000676c:	5e870713          	addi	a4,a4,1512 # 80013d50 <timer_scratch>
    80006770:	00b7b023          	sd	a1,0(a5)
    80006774:	00d70733          	add	a4,a4,a3
    80006778:	00f73c23          	sd	a5,24(a4)
    8000677c:	02c73023          	sd	a2,32(a4)
    80006780:	34071073          	csrw	mscratch,a4
    80006784:	00000797          	auipc	a5,0x0
    80006788:	6ec78793          	addi	a5,a5,1772 # 80006e70 <timervec>
    8000678c:	30579073          	csrw	mtvec,a5
    80006790:	300027f3          	csrr	a5,mstatus
    80006794:	0087e793          	ori	a5,a5,8
    80006798:	30079073          	csrw	mstatus,a5
    8000679c:	304027f3          	csrr	a5,mie
    800067a0:	0807e793          	ori	a5,a5,128
    800067a4:	30479073          	csrw	mie,a5
    800067a8:	f14027f3          	csrr	a5,mhartid
    800067ac:	0007879b          	sext.w	a5,a5
    800067b0:	00078213          	mv	tp,a5
    800067b4:	30200073          	mret
    800067b8:	00813403          	ld	s0,8(sp)
    800067bc:	01010113          	addi	sp,sp,16
    800067c0:	00008067          	ret

00000000800067c4 <timerinit>:
    800067c4:	ff010113          	addi	sp,sp,-16
    800067c8:	00813423          	sd	s0,8(sp)
    800067cc:	01010413          	addi	s0,sp,16
    800067d0:	f14027f3          	csrr	a5,mhartid
    800067d4:	0200c737          	lui	a4,0x200c
    800067d8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800067dc:	0007869b          	sext.w	a3,a5
    800067e0:	00269713          	slli	a4,a3,0x2
    800067e4:	000f4637          	lui	a2,0xf4
    800067e8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800067ec:	00d70733          	add	a4,a4,a3
    800067f0:	0037979b          	slliw	a5,a5,0x3
    800067f4:	020046b7          	lui	a3,0x2004
    800067f8:	00d787b3          	add	a5,a5,a3
    800067fc:	00c585b3          	add	a1,a1,a2
    80006800:	00371693          	slli	a3,a4,0x3
    80006804:	0000d717          	auipc	a4,0xd
    80006808:	54c70713          	addi	a4,a4,1356 # 80013d50 <timer_scratch>
    8000680c:	00b7b023          	sd	a1,0(a5)
    80006810:	00d70733          	add	a4,a4,a3
    80006814:	00f73c23          	sd	a5,24(a4)
    80006818:	02c73023          	sd	a2,32(a4)
    8000681c:	34071073          	csrw	mscratch,a4
    80006820:	00000797          	auipc	a5,0x0
    80006824:	65078793          	addi	a5,a5,1616 # 80006e70 <timervec>
    80006828:	30579073          	csrw	mtvec,a5
    8000682c:	300027f3          	csrr	a5,mstatus
    80006830:	0087e793          	ori	a5,a5,8
    80006834:	30079073          	csrw	mstatus,a5
    80006838:	304027f3          	csrr	a5,mie
    8000683c:	0807e793          	ori	a5,a5,128
    80006840:	30479073          	csrw	mie,a5
    80006844:	00813403          	ld	s0,8(sp)
    80006848:	01010113          	addi	sp,sp,16
    8000684c:	00008067          	ret

0000000080006850 <system_main>:
    80006850:	fe010113          	addi	sp,sp,-32
    80006854:	00813823          	sd	s0,16(sp)
    80006858:	00913423          	sd	s1,8(sp)
    8000685c:	00113c23          	sd	ra,24(sp)
    80006860:	02010413          	addi	s0,sp,32
    80006864:	00000097          	auipc	ra,0x0
    80006868:	0c4080e7          	jalr	196(ra) # 80006928 <cpuid>
    8000686c:	00005497          	auipc	s1,0x5
    80006870:	3c448493          	addi	s1,s1,964 # 8000bc30 <started>
    80006874:	02050263          	beqz	a0,80006898 <system_main+0x48>
    80006878:	0004a783          	lw	a5,0(s1)
    8000687c:	0007879b          	sext.w	a5,a5
    80006880:	fe078ce3          	beqz	a5,80006878 <system_main+0x28>
    80006884:	0ff0000f          	fence
    80006888:	00003517          	auipc	a0,0x3
    8000688c:	d6850513          	addi	a0,a0,-664 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80006890:	00001097          	auipc	ra,0x1
    80006894:	a7c080e7          	jalr	-1412(ra) # 8000730c <panic>
    80006898:	00001097          	auipc	ra,0x1
    8000689c:	9d0080e7          	jalr	-1584(ra) # 80007268 <consoleinit>
    800068a0:	00001097          	auipc	ra,0x1
    800068a4:	15c080e7          	jalr	348(ra) # 800079fc <printfinit>
    800068a8:	00003517          	auipc	a0,0x3
    800068ac:	8d850513          	addi	a0,a0,-1832 # 80009180 <CONSOLE_STATUS+0x170>
    800068b0:	00001097          	auipc	ra,0x1
    800068b4:	ab8080e7          	jalr	-1352(ra) # 80007368 <__printf>
    800068b8:	00003517          	auipc	a0,0x3
    800068bc:	d0850513          	addi	a0,a0,-760 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800068c0:	00001097          	auipc	ra,0x1
    800068c4:	aa8080e7          	jalr	-1368(ra) # 80007368 <__printf>
    800068c8:	00003517          	auipc	a0,0x3
    800068cc:	8b850513          	addi	a0,a0,-1864 # 80009180 <CONSOLE_STATUS+0x170>
    800068d0:	00001097          	auipc	ra,0x1
    800068d4:	a98080e7          	jalr	-1384(ra) # 80007368 <__printf>
    800068d8:	00001097          	auipc	ra,0x1
    800068dc:	4b0080e7          	jalr	1200(ra) # 80007d88 <kinit>
    800068e0:	00000097          	auipc	ra,0x0
    800068e4:	148080e7          	jalr	328(ra) # 80006a28 <trapinit>
    800068e8:	00000097          	auipc	ra,0x0
    800068ec:	16c080e7          	jalr	364(ra) # 80006a54 <trapinithart>
    800068f0:	00000097          	auipc	ra,0x0
    800068f4:	5c0080e7          	jalr	1472(ra) # 80006eb0 <plicinit>
    800068f8:	00000097          	auipc	ra,0x0
    800068fc:	5e0080e7          	jalr	1504(ra) # 80006ed8 <plicinithart>
    80006900:	00000097          	auipc	ra,0x0
    80006904:	078080e7          	jalr	120(ra) # 80006978 <userinit>
    80006908:	0ff0000f          	fence
    8000690c:	00100793          	li	a5,1
    80006910:	00003517          	auipc	a0,0x3
    80006914:	cc850513          	addi	a0,a0,-824 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80006918:	00f4a023          	sw	a5,0(s1)
    8000691c:	00001097          	auipc	ra,0x1
    80006920:	a4c080e7          	jalr	-1460(ra) # 80007368 <__printf>
    80006924:	0000006f          	j	80006924 <system_main+0xd4>

0000000080006928 <cpuid>:
    80006928:	ff010113          	addi	sp,sp,-16
    8000692c:	00813423          	sd	s0,8(sp)
    80006930:	01010413          	addi	s0,sp,16
    80006934:	00020513          	mv	a0,tp
    80006938:	00813403          	ld	s0,8(sp)
    8000693c:	0005051b          	sext.w	a0,a0
    80006940:	01010113          	addi	sp,sp,16
    80006944:	00008067          	ret

0000000080006948 <mycpu>:
    80006948:	ff010113          	addi	sp,sp,-16
    8000694c:	00813423          	sd	s0,8(sp)
    80006950:	01010413          	addi	s0,sp,16
    80006954:	00020793          	mv	a5,tp
    80006958:	00813403          	ld	s0,8(sp)
    8000695c:	0007879b          	sext.w	a5,a5
    80006960:	00779793          	slli	a5,a5,0x7
    80006964:	0000e517          	auipc	a0,0xe
    80006968:	41c50513          	addi	a0,a0,1052 # 80014d80 <cpus>
    8000696c:	00f50533          	add	a0,a0,a5
    80006970:	01010113          	addi	sp,sp,16
    80006974:	00008067          	ret

0000000080006978 <userinit>:
    80006978:	ff010113          	addi	sp,sp,-16
    8000697c:	00813423          	sd	s0,8(sp)
    80006980:	01010413          	addi	s0,sp,16
    80006984:	00813403          	ld	s0,8(sp)
    80006988:	01010113          	addi	sp,sp,16
    8000698c:	ffffd317          	auipc	t1,0xffffd
    80006990:	1b430067          	jr	436(t1) # 80003b40 <main>

0000000080006994 <either_copyout>:
    80006994:	ff010113          	addi	sp,sp,-16
    80006998:	00813023          	sd	s0,0(sp)
    8000699c:	00113423          	sd	ra,8(sp)
    800069a0:	01010413          	addi	s0,sp,16
    800069a4:	02051663          	bnez	a0,800069d0 <either_copyout+0x3c>
    800069a8:	00058513          	mv	a0,a1
    800069ac:	00060593          	mv	a1,a2
    800069b0:	0006861b          	sext.w	a2,a3
    800069b4:	00002097          	auipc	ra,0x2
    800069b8:	c60080e7          	jalr	-928(ra) # 80008614 <__memmove>
    800069bc:	00813083          	ld	ra,8(sp)
    800069c0:	00013403          	ld	s0,0(sp)
    800069c4:	00000513          	li	a0,0
    800069c8:	01010113          	addi	sp,sp,16
    800069cc:	00008067          	ret
    800069d0:	00003517          	auipc	a0,0x3
    800069d4:	c4850513          	addi	a0,a0,-952 # 80009618 <CONSOLE_STATUS+0x608>
    800069d8:	00001097          	auipc	ra,0x1
    800069dc:	934080e7          	jalr	-1740(ra) # 8000730c <panic>

00000000800069e0 <either_copyin>:
    800069e0:	ff010113          	addi	sp,sp,-16
    800069e4:	00813023          	sd	s0,0(sp)
    800069e8:	00113423          	sd	ra,8(sp)
    800069ec:	01010413          	addi	s0,sp,16
    800069f0:	02059463          	bnez	a1,80006a18 <either_copyin+0x38>
    800069f4:	00060593          	mv	a1,a2
    800069f8:	0006861b          	sext.w	a2,a3
    800069fc:	00002097          	auipc	ra,0x2
    80006a00:	c18080e7          	jalr	-1000(ra) # 80008614 <__memmove>
    80006a04:	00813083          	ld	ra,8(sp)
    80006a08:	00013403          	ld	s0,0(sp)
    80006a0c:	00000513          	li	a0,0
    80006a10:	01010113          	addi	sp,sp,16
    80006a14:	00008067          	ret
    80006a18:	00003517          	auipc	a0,0x3
    80006a1c:	c2850513          	addi	a0,a0,-984 # 80009640 <CONSOLE_STATUS+0x630>
    80006a20:	00001097          	auipc	ra,0x1
    80006a24:	8ec080e7          	jalr	-1812(ra) # 8000730c <panic>

0000000080006a28 <trapinit>:
    80006a28:	ff010113          	addi	sp,sp,-16
    80006a2c:	00813423          	sd	s0,8(sp)
    80006a30:	01010413          	addi	s0,sp,16
    80006a34:	00813403          	ld	s0,8(sp)
    80006a38:	00003597          	auipc	a1,0x3
    80006a3c:	c3058593          	addi	a1,a1,-976 # 80009668 <CONSOLE_STATUS+0x658>
    80006a40:	0000e517          	auipc	a0,0xe
    80006a44:	3c050513          	addi	a0,a0,960 # 80014e00 <tickslock>
    80006a48:	01010113          	addi	sp,sp,16
    80006a4c:	00001317          	auipc	t1,0x1
    80006a50:	5cc30067          	jr	1484(t1) # 80008018 <initlock>

0000000080006a54 <trapinithart>:
    80006a54:	ff010113          	addi	sp,sp,-16
    80006a58:	00813423          	sd	s0,8(sp)
    80006a5c:	01010413          	addi	s0,sp,16
    80006a60:	00000797          	auipc	a5,0x0
    80006a64:	30078793          	addi	a5,a5,768 # 80006d60 <kernelvec>
    80006a68:	10579073          	csrw	stvec,a5
    80006a6c:	00813403          	ld	s0,8(sp)
    80006a70:	01010113          	addi	sp,sp,16
    80006a74:	00008067          	ret

0000000080006a78 <usertrap>:
    80006a78:	ff010113          	addi	sp,sp,-16
    80006a7c:	00813423          	sd	s0,8(sp)
    80006a80:	01010413          	addi	s0,sp,16
    80006a84:	00813403          	ld	s0,8(sp)
    80006a88:	01010113          	addi	sp,sp,16
    80006a8c:	00008067          	ret

0000000080006a90 <usertrapret>:
    80006a90:	ff010113          	addi	sp,sp,-16
    80006a94:	00813423          	sd	s0,8(sp)
    80006a98:	01010413          	addi	s0,sp,16
    80006a9c:	00813403          	ld	s0,8(sp)
    80006aa0:	01010113          	addi	sp,sp,16
    80006aa4:	00008067          	ret

0000000080006aa8 <kerneltrap>:
    80006aa8:	fe010113          	addi	sp,sp,-32
    80006aac:	00813823          	sd	s0,16(sp)
    80006ab0:	00113c23          	sd	ra,24(sp)
    80006ab4:	00913423          	sd	s1,8(sp)
    80006ab8:	02010413          	addi	s0,sp,32
    80006abc:	142025f3          	csrr	a1,scause
    80006ac0:	100027f3          	csrr	a5,sstatus
    80006ac4:	0027f793          	andi	a5,a5,2
    80006ac8:	10079c63          	bnez	a5,80006be0 <kerneltrap+0x138>
    80006acc:	142027f3          	csrr	a5,scause
    80006ad0:	0207ce63          	bltz	a5,80006b0c <kerneltrap+0x64>
    80006ad4:	00003517          	auipc	a0,0x3
    80006ad8:	bdc50513          	addi	a0,a0,-1060 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80006adc:	00001097          	auipc	ra,0x1
    80006ae0:	88c080e7          	jalr	-1908(ra) # 80007368 <__printf>
    80006ae4:	141025f3          	csrr	a1,sepc
    80006ae8:	14302673          	csrr	a2,stval
    80006aec:	00003517          	auipc	a0,0x3
    80006af0:	bd450513          	addi	a0,a0,-1068 # 800096c0 <CONSOLE_STATUS+0x6b0>
    80006af4:	00001097          	auipc	ra,0x1
    80006af8:	874080e7          	jalr	-1932(ra) # 80007368 <__printf>
    80006afc:	00003517          	auipc	a0,0x3
    80006b00:	bdc50513          	addi	a0,a0,-1060 # 800096d8 <CONSOLE_STATUS+0x6c8>
    80006b04:	00001097          	auipc	ra,0x1
    80006b08:	808080e7          	jalr	-2040(ra) # 8000730c <panic>
    80006b0c:	0ff7f713          	andi	a4,a5,255
    80006b10:	00900693          	li	a3,9
    80006b14:	04d70063          	beq	a4,a3,80006b54 <kerneltrap+0xac>
    80006b18:	fff00713          	li	a4,-1
    80006b1c:	03f71713          	slli	a4,a4,0x3f
    80006b20:	00170713          	addi	a4,a4,1
    80006b24:	fae798e3          	bne	a5,a4,80006ad4 <kerneltrap+0x2c>
    80006b28:	00000097          	auipc	ra,0x0
    80006b2c:	e00080e7          	jalr	-512(ra) # 80006928 <cpuid>
    80006b30:	06050663          	beqz	a0,80006b9c <kerneltrap+0xf4>
    80006b34:	144027f3          	csrr	a5,sip
    80006b38:	ffd7f793          	andi	a5,a5,-3
    80006b3c:	14479073          	csrw	sip,a5
    80006b40:	01813083          	ld	ra,24(sp)
    80006b44:	01013403          	ld	s0,16(sp)
    80006b48:	00813483          	ld	s1,8(sp)
    80006b4c:	02010113          	addi	sp,sp,32
    80006b50:	00008067          	ret
    80006b54:	00000097          	auipc	ra,0x0
    80006b58:	3d0080e7          	jalr	976(ra) # 80006f24 <plic_claim>
    80006b5c:	00a00793          	li	a5,10
    80006b60:	00050493          	mv	s1,a0
    80006b64:	06f50863          	beq	a0,a5,80006bd4 <kerneltrap+0x12c>
    80006b68:	fc050ce3          	beqz	a0,80006b40 <kerneltrap+0x98>
    80006b6c:	00050593          	mv	a1,a0
    80006b70:	00003517          	auipc	a0,0x3
    80006b74:	b2050513          	addi	a0,a0,-1248 # 80009690 <CONSOLE_STATUS+0x680>
    80006b78:	00000097          	auipc	ra,0x0
    80006b7c:	7f0080e7          	jalr	2032(ra) # 80007368 <__printf>
    80006b80:	01013403          	ld	s0,16(sp)
    80006b84:	01813083          	ld	ra,24(sp)
    80006b88:	00048513          	mv	a0,s1
    80006b8c:	00813483          	ld	s1,8(sp)
    80006b90:	02010113          	addi	sp,sp,32
    80006b94:	00000317          	auipc	t1,0x0
    80006b98:	3c830067          	jr	968(t1) # 80006f5c <plic_complete>
    80006b9c:	0000e517          	auipc	a0,0xe
    80006ba0:	26450513          	addi	a0,a0,612 # 80014e00 <tickslock>
    80006ba4:	00001097          	auipc	ra,0x1
    80006ba8:	498080e7          	jalr	1176(ra) # 8000803c <acquire>
    80006bac:	00005717          	auipc	a4,0x5
    80006bb0:	08870713          	addi	a4,a4,136 # 8000bc34 <ticks>
    80006bb4:	00072783          	lw	a5,0(a4)
    80006bb8:	0000e517          	auipc	a0,0xe
    80006bbc:	24850513          	addi	a0,a0,584 # 80014e00 <tickslock>
    80006bc0:	0017879b          	addiw	a5,a5,1
    80006bc4:	00f72023          	sw	a5,0(a4)
    80006bc8:	00001097          	auipc	ra,0x1
    80006bcc:	540080e7          	jalr	1344(ra) # 80008108 <release>
    80006bd0:	f65ff06f          	j	80006b34 <kerneltrap+0x8c>
    80006bd4:	00001097          	auipc	ra,0x1
    80006bd8:	09c080e7          	jalr	156(ra) # 80007c70 <uartintr>
    80006bdc:	fa5ff06f          	j	80006b80 <kerneltrap+0xd8>
    80006be0:	00003517          	auipc	a0,0x3
    80006be4:	a9050513          	addi	a0,a0,-1392 # 80009670 <CONSOLE_STATUS+0x660>
    80006be8:	00000097          	auipc	ra,0x0
    80006bec:	724080e7          	jalr	1828(ra) # 8000730c <panic>

0000000080006bf0 <clockintr>:
    80006bf0:	fe010113          	addi	sp,sp,-32
    80006bf4:	00813823          	sd	s0,16(sp)
    80006bf8:	00913423          	sd	s1,8(sp)
    80006bfc:	00113c23          	sd	ra,24(sp)
    80006c00:	02010413          	addi	s0,sp,32
    80006c04:	0000e497          	auipc	s1,0xe
    80006c08:	1fc48493          	addi	s1,s1,508 # 80014e00 <tickslock>
    80006c0c:	00048513          	mv	a0,s1
    80006c10:	00001097          	auipc	ra,0x1
    80006c14:	42c080e7          	jalr	1068(ra) # 8000803c <acquire>
    80006c18:	00005717          	auipc	a4,0x5
    80006c1c:	01c70713          	addi	a4,a4,28 # 8000bc34 <ticks>
    80006c20:	00072783          	lw	a5,0(a4)
    80006c24:	01013403          	ld	s0,16(sp)
    80006c28:	01813083          	ld	ra,24(sp)
    80006c2c:	00048513          	mv	a0,s1
    80006c30:	0017879b          	addiw	a5,a5,1
    80006c34:	00813483          	ld	s1,8(sp)
    80006c38:	00f72023          	sw	a5,0(a4)
    80006c3c:	02010113          	addi	sp,sp,32
    80006c40:	00001317          	auipc	t1,0x1
    80006c44:	4c830067          	jr	1224(t1) # 80008108 <release>

0000000080006c48 <devintr>:
    80006c48:	142027f3          	csrr	a5,scause
    80006c4c:	00000513          	li	a0,0
    80006c50:	0007c463          	bltz	a5,80006c58 <devintr+0x10>
    80006c54:	00008067          	ret
    80006c58:	fe010113          	addi	sp,sp,-32
    80006c5c:	00813823          	sd	s0,16(sp)
    80006c60:	00113c23          	sd	ra,24(sp)
    80006c64:	00913423          	sd	s1,8(sp)
    80006c68:	02010413          	addi	s0,sp,32
    80006c6c:	0ff7f713          	andi	a4,a5,255
    80006c70:	00900693          	li	a3,9
    80006c74:	04d70c63          	beq	a4,a3,80006ccc <devintr+0x84>
    80006c78:	fff00713          	li	a4,-1
    80006c7c:	03f71713          	slli	a4,a4,0x3f
    80006c80:	00170713          	addi	a4,a4,1
    80006c84:	00e78c63          	beq	a5,a4,80006c9c <devintr+0x54>
    80006c88:	01813083          	ld	ra,24(sp)
    80006c8c:	01013403          	ld	s0,16(sp)
    80006c90:	00813483          	ld	s1,8(sp)
    80006c94:	02010113          	addi	sp,sp,32
    80006c98:	00008067          	ret
    80006c9c:	00000097          	auipc	ra,0x0
    80006ca0:	c8c080e7          	jalr	-884(ra) # 80006928 <cpuid>
    80006ca4:	06050663          	beqz	a0,80006d10 <devintr+0xc8>
    80006ca8:	144027f3          	csrr	a5,sip
    80006cac:	ffd7f793          	andi	a5,a5,-3
    80006cb0:	14479073          	csrw	sip,a5
    80006cb4:	01813083          	ld	ra,24(sp)
    80006cb8:	01013403          	ld	s0,16(sp)
    80006cbc:	00813483          	ld	s1,8(sp)
    80006cc0:	00200513          	li	a0,2
    80006cc4:	02010113          	addi	sp,sp,32
    80006cc8:	00008067          	ret
    80006ccc:	00000097          	auipc	ra,0x0
    80006cd0:	258080e7          	jalr	600(ra) # 80006f24 <plic_claim>
    80006cd4:	00a00793          	li	a5,10
    80006cd8:	00050493          	mv	s1,a0
    80006cdc:	06f50663          	beq	a0,a5,80006d48 <devintr+0x100>
    80006ce0:	00100513          	li	a0,1
    80006ce4:	fa0482e3          	beqz	s1,80006c88 <devintr+0x40>
    80006ce8:	00048593          	mv	a1,s1
    80006cec:	00003517          	auipc	a0,0x3
    80006cf0:	9a450513          	addi	a0,a0,-1628 # 80009690 <CONSOLE_STATUS+0x680>
    80006cf4:	00000097          	auipc	ra,0x0
    80006cf8:	674080e7          	jalr	1652(ra) # 80007368 <__printf>
    80006cfc:	00048513          	mv	a0,s1
    80006d00:	00000097          	auipc	ra,0x0
    80006d04:	25c080e7          	jalr	604(ra) # 80006f5c <plic_complete>
    80006d08:	00100513          	li	a0,1
    80006d0c:	f7dff06f          	j	80006c88 <devintr+0x40>
    80006d10:	0000e517          	auipc	a0,0xe
    80006d14:	0f050513          	addi	a0,a0,240 # 80014e00 <tickslock>
    80006d18:	00001097          	auipc	ra,0x1
    80006d1c:	324080e7          	jalr	804(ra) # 8000803c <acquire>
    80006d20:	00005717          	auipc	a4,0x5
    80006d24:	f1470713          	addi	a4,a4,-236 # 8000bc34 <ticks>
    80006d28:	00072783          	lw	a5,0(a4)
    80006d2c:	0000e517          	auipc	a0,0xe
    80006d30:	0d450513          	addi	a0,a0,212 # 80014e00 <tickslock>
    80006d34:	0017879b          	addiw	a5,a5,1
    80006d38:	00f72023          	sw	a5,0(a4)
    80006d3c:	00001097          	auipc	ra,0x1
    80006d40:	3cc080e7          	jalr	972(ra) # 80008108 <release>
    80006d44:	f65ff06f          	j	80006ca8 <devintr+0x60>
    80006d48:	00001097          	auipc	ra,0x1
    80006d4c:	f28080e7          	jalr	-216(ra) # 80007c70 <uartintr>
    80006d50:	fadff06f          	j	80006cfc <devintr+0xb4>
	...

0000000080006d60 <kernelvec>:
    80006d60:	f0010113          	addi	sp,sp,-256
    80006d64:	00113023          	sd	ra,0(sp)
    80006d68:	00213423          	sd	sp,8(sp)
    80006d6c:	00313823          	sd	gp,16(sp)
    80006d70:	00413c23          	sd	tp,24(sp)
    80006d74:	02513023          	sd	t0,32(sp)
    80006d78:	02613423          	sd	t1,40(sp)
    80006d7c:	02713823          	sd	t2,48(sp)
    80006d80:	02813c23          	sd	s0,56(sp)
    80006d84:	04913023          	sd	s1,64(sp)
    80006d88:	04a13423          	sd	a0,72(sp)
    80006d8c:	04b13823          	sd	a1,80(sp)
    80006d90:	04c13c23          	sd	a2,88(sp)
    80006d94:	06d13023          	sd	a3,96(sp)
    80006d98:	06e13423          	sd	a4,104(sp)
    80006d9c:	06f13823          	sd	a5,112(sp)
    80006da0:	07013c23          	sd	a6,120(sp)
    80006da4:	09113023          	sd	a7,128(sp)
    80006da8:	09213423          	sd	s2,136(sp)
    80006dac:	09313823          	sd	s3,144(sp)
    80006db0:	09413c23          	sd	s4,152(sp)
    80006db4:	0b513023          	sd	s5,160(sp)
    80006db8:	0b613423          	sd	s6,168(sp)
    80006dbc:	0b713823          	sd	s7,176(sp)
    80006dc0:	0b813c23          	sd	s8,184(sp)
    80006dc4:	0d913023          	sd	s9,192(sp)
    80006dc8:	0da13423          	sd	s10,200(sp)
    80006dcc:	0db13823          	sd	s11,208(sp)
    80006dd0:	0dc13c23          	sd	t3,216(sp)
    80006dd4:	0fd13023          	sd	t4,224(sp)
    80006dd8:	0fe13423          	sd	t5,232(sp)
    80006ddc:	0ff13823          	sd	t6,240(sp)
    80006de0:	cc9ff0ef          	jal	ra,80006aa8 <kerneltrap>
    80006de4:	00013083          	ld	ra,0(sp)
    80006de8:	00813103          	ld	sp,8(sp)
    80006dec:	01013183          	ld	gp,16(sp)
    80006df0:	02013283          	ld	t0,32(sp)
    80006df4:	02813303          	ld	t1,40(sp)
    80006df8:	03013383          	ld	t2,48(sp)
    80006dfc:	03813403          	ld	s0,56(sp)
    80006e00:	04013483          	ld	s1,64(sp)
    80006e04:	04813503          	ld	a0,72(sp)
    80006e08:	05013583          	ld	a1,80(sp)
    80006e0c:	05813603          	ld	a2,88(sp)
    80006e10:	06013683          	ld	a3,96(sp)
    80006e14:	06813703          	ld	a4,104(sp)
    80006e18:	07013783          	ld	a5,112(sp)
    80006e1c:	07813803          	ld	a6,120(sp)
    80006e20:	08013883          	ld	a7,128(sp)
    80006e24:	08813903          	ld	s2,136(sp)
    80006e28:	09013983          	ld	s3,144(sp)
    80006e2c:	09813a03          	ld	s4,152(sp)
    80006e30:	0a013a83          	ld	s5,160(sp)
    80006e34:	0a813b03          	ld	s6,168(sp)
    80006e38:	0b013b83          	ld	s7,176(sp)
    80006e3c:	0b813c03          	ld	s8,184(sp)
    80006e40:	0c013c83          	ld	s9,192(sp)
    80006e44:	0c813d03          	ld	s10,200(sp)
    80006e48:	0d013d83          	ld	s11,208(sp)
    80006e4c:	0d813e03          	ld	t3,216(sp)
    80006e50:	0e013e83          	ld	t4,224(sp)
    80006e54:	0e813f03          	ld	t5,232(sp)
    80006e58:	0f013f83          	ld	t6,240(sp)
    80006e5c:	10010113          	addi	sp,sp,256
    80006e60:	10200073          	sret
    80006e64:	00000013          	nop
    80006e68:	00000013          	nop
    80006e6c:	00000013          	nop

0000000080006e70 <timervec>:
    80006e70:	34051573          	csrrw	a0,mscratch,a0
    80006e74:	00b53023          	sd	a1,0(a0)
    80006e78:	00c53423          	sd	a2,8(a0)
    80006e7c:	00d53823          	sd	a3,16(a0)
    80006e80:	01853583          	ld	a1,24(a0)
    80006e84:	02053603          	ld	a2,32(a0)
    80006e88:	0005b683          	ld	a3,0(a1)
    80006e8c:	00c686b3          	add	a3,a3,a2
    80006e90:	00d5b023          	sd	a3,0(a1)
    80006e94:	00200593          	li	a1,2
    80006e98:	14459073          	csrw	sip,a1
    80006e9c:	01053683          	ld	a3,16(a0)
    80006ea0:	00853603          	ld	a2,8(a0)
    80006ea4:	00053583          	ld	a1,0(a0)
    80006ea8:	34051573          	csrrw	a0,mscratch,a0
    80006eac:	30200073          	mret

0000000080006eb0 <plicinit>:
    80006eb0:	ff010113          	addi	sp,sp,-16
    80006eb4:	00813423          	sd	s0,8(sp)
    80006eb8:	01010413          	addi	s0,sp,16
    80006ebc:	00813403          	ld	s0,8(sp)
    80006ec0:	0c0007b7          	lui	a5,0xc000
    80006ec4:	00100713          	li	a4,1
    80006ec8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006ecc:	00e7a223          	sw	a4,4(a5)
    80006ed0:	01010113          	addi	sp,sp,16
    80006ed4:	00008067          	ret

0000000080006ed8 <plicinithart>:
    80006ed8:	ff010113          	addi	sp,sp,-16
    80006edc:	00813023          	sd	s0,0(sp)
    80006ee0:	00113423          	sd	ra,8(sp)
    80006ee4:	01010413          	addi	s0,sp,16
    80006ee8:	00000097          	auipc	ra,0x0
    80006eec:	a40080e7          	jalr	-1472(ra) # 80006928 <cpuid>
    80006ef0:	0085171b          	slliw	a4,a0,0x8
    80006ef4:	0c0027b7          	lui	a5,0xc002
    80006ef8:	00e787b3          	add	a5,a5,a4
    80006efc:	40200713          	li	a4,1026
    80006f00:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006f04:	00813083          	ld	ra,8(sp)
    80006f08:	00013403          	ld	s0,0(sp)
    80006f0c:	00d5151b          	slliw	a0,a0,0xd
    80006f10:	0c2017b7          	lui	a5,0xc201
    80006f14:	00a78533          	add	a0,a5,a0
    80006f18:	00052023          	sw	zero,0(a0)
    80006f1c:	01010113          	addi	sp,sp,16
    80006f20:	00008067          	ret

0000000080006f24 <plic_claim>:
    80006f24:	ff010113          	addi	sp,sp,-16
    80006f28:	00813023          	sd	s0,0(sp)
    80006f2c:	00113423          	sd	ra,8(sp)
    80006f30:	01010413          	addi	s0,sp,16
    80006f34:	00000097          	auipc	ra,0x0
    80006f38:	9f4080e7          	jalr	-1548(ra) # 80006928 <cpuid>
    80006f3c:	00813083          	ld	ra,8(sp)
    80006f40:	00013403          	ld	s0,0(sp)
    80006f44:	00d5151b          	slliw	a0,a0,0xd
    80006f48:	0c2017b7          	lui	a5,0xc201
    80006f4c:	00a78533          	add	a0,a5,a0
    80006f50:	00452503          	lw	a0,4(a0)
    80006f54:	01010113          	addi	sp,sp,16
    80006f58:	00008067          	ret

0000000080006f5c <plic_complete>:
    80006f5c:	fe010113          	addi	sp,sp,-32
    80006f60:	00813823          	sd	s0,16(sp)
    80006f64:	00913423          	sd	s1,8(sp)
    80006f68:	00113c23          	sd	ra,24(sp)
    80006f6c:	02010413          	addi	s0,sp,32
    80006f70:	00050493          	mv	s1,a0
    80006f74:	00000097          	auipc	ra,0x0
    80006f78:	9b4080e7          	jalr	-1612(ra) # 80006928 <cpuid>
    80006f7c:	01813083          	ld	ra,24(sp)
    80006f80:	01013403          	ld	s0,16(sp)
    80006f84:	00d5179b          	slliw	a5,a0,0xd
    80006f88:	0c201737          	lui	a4,0xc201
    80006f8c:	00f707b3          	add	a5,a4,a5
    80006f90:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006f94:	00813483          	ld	s1,8(sp)
    80006f98:	02010113          	addi	sp,sp,32
    80006f9c:	00008067          	ret

0000000080006fa0 <consolewrite>:
    80006fa0:	fb010113          	addi	sp,sp,-80
    80006fa4:	04813023          	sd	s0,64(sp)
    80006fa8:	04113423          	sd	ra,72(sp)
    80006fac:	02913c23          	sd	s1,56(sp)
    80006fb0:	03213823          	sd	s2,48(sp)
    80006fb4:	03313423          	sd	s3,40(sp)
    80006fb8:	03413023          	sd	s4,32(sp)
    80006fbc:	01513c23          	sd	s5,24(sp)
    80006fc0:	05010413          	addi	s0,sp,80
    80006fc4:	06c05c63          	blez	a2,8000703c <consolewrite+0x9c>
    80006fc8:	00060993          	mv	s3,a2
    80006fcc:	00050a13          	mv	s4,a0
    80006fd0:	00058493          	mv	s1,a1
    80006fd4:	00000913          	li	s2,0
    80006fd8:	fff00a93          	li	s5,-1
    80006fdc:	01c0006f          	j	80006ff8 <consolewrite+0x58>
    80006fe0:	fbf44503          	lbu	a0,-65(s0)
    80006fe4:	0019091b          	addiw	s2,s2,1
    80006fe8:	00148493          	addi	s1,s1,1
    80006fec:	00001097          	auipc	ra,0x1
    80006ff0:	a9c080e7          	jalr	-1380(ra) # 80007a88 <uartputc>
    80006ff4:	03298063          	beq	s3,s2,80007014 <consolewrite+0x74>
    80006ff8:	00048613          	mv	a2,s1
    80006ffc:	00100693          	li	a3,1
    80007000:	000a0593          	mv	a1,s4
    80007004:	fbf40513          	addi	a0,s0,-65
    80007008:	00000097          	auipc	ra,0x0
    8000700c:	9d8080e7          	jalr	-1576(ra) # 800069e0 <either_copyin>
    80007010:	fd5518e3          	bne	a0,s5,80006fe0 <consolewrite+0x40>
    80007014:	04813083          	ld	ra,72(sp)
    80007018:	04013403          	ld	s0,64(sp)
    8000701c:	03813483          	ld	s1,56(sp)
    80007020:	02813983          	ld	s3,40(sp)
    80007024:	02013a03          	ld	s4,32(sp)
    80007028:	01813a83          	ld	s5,24(sp)
    8000702c:	00090513          	mv	a0,s2
    80007030:	03013903          	ld	s2,48(sp)
    80007034:	05010113          	addi	sp,sp,80
    80007038:	00008067          	ret
    8000703c:	00000913          	li	s2,0
    80007040:	fd5ff06f          	j	80007014 <consolewrite+0x74>

0000000080007044 <consoleread>:
    80007044:	f9010113          	addi	sp,sp,-112
    80007048:	06813023          	sd	s0,96(sp)
    8000704c:	04913c23          	sd	s1,88(sp)
    80007050:	05213823          	sd	s2,80(sp)
    80007054:	05313423          	sd	s3,72(sp)
    80007058:	05413023          	sd	s4,64(sp)
    8000705c:	03513c23          	sd	s5,56(sp)
    80007060:	03613823          	sd	s6,48(sp)
    80007064:	03713423          	sd	s7,40(sp)
    80007068:	03813023          	sd	s8,32(sp)
    8000706c:	06113423          	sd	ra,104(sp)
    80007070:	01913c23          	sd	s9,24(sp)
    80007074:	07010413          	addi	s0,sp,112
    80007078:	00060b93          	mv	s7,a2
    8000707c:	00050913          	mv	s2,a0
    80007080:	00058c13          	mv	s8,a1
    80007084:	00060b1b          	sext.w	s6,a2
    80007088:	0000e497          	auipc	s1,0xe
    8000708c:	da048493          	addi	s1,s1,-608 # 80014e28 <cons>
    80007090:	00400993          	li	s3,4
    80007094:	fff00a13          	li	s4,-1
    80007098:	00a00a93          	li	s5,10
    8000709c:	05705e63          	blez	s7,800070f8 <consoleread+0xb4>
    800070a0:	09c4a703          	lw	a4,156(s1)
    800070a4:	0984a783          	lw	a5,152(s1)
    800070a8:	0007071b          	sext.w	a4,a4
    800070ac:	08e78463          	beq	a5,a4,80007134 <consoleread+0xf0>
    800070b0:	07f7f713          	andi	a4,a5,127
    800070b4:	00e48733          	add	a4,s1,a4
    800070b8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800070bc:	0017869b          	addiw	a3,a5,1
    800070c0:	08d4ac23          	sw	a3,152(s1)
    800070c4:	00070c9b          	sext.w	s9,a4
    800070c8:	0b370663          	beq	a4,s3,80007174 <consoleread+0x130>
    800070cc:	00100693          	li	a3,1
    800070d0:	f9f40613          	addi	a2,s0,-97
    800070d4:	000c0593          	mv	a1,s8
    800070d8:	00090513          	mv	a0,s2
    800070dc:	f8e40fa3          	sb	a4,-97(s0)
    800070e0:	00000097          	auipc	ra,0x0
    800070e4:	8b4080e7          	jalr	-1868(ra) # 80006994 <either_copyout>
    800070e8:	01450863          	beq	a0,s4,800070f8 <consoleread+0xb4>
    800070ec:	001c0c13          	addi	s8,s8,1
    800070f0:	fffb8b9b          	addiw	s7,s7,-1
    800070f4:	fb5c94e3          	bne	s9,s5,8000709c <consoleread+0x58>
    800070f8:	000b851b          	sext.w	a0,s7
    800070fc:	06813083          	ld	ra,104(sp)
    80007100:	06013403          	ld	s0,96(sp)
    80007104:	05813483          	ld	s1,88(sp)
    80007108:	05013903          	ld	s2,80(sp)
    8000710c:	04813983          	ld	s3,72(sp)
    80007110:	04013a03          	ld	s4,64(sp)
    80007114:	03813a83          	ld	s5,56(sp)
    80007118:	02813b83          	ld	s7,40(sp)
    8000711c:	02013c03          	ld	s8,32(sp)
    80007120:	01813c83          	ld	s9,24(sp)
    80007124:	40ab053b          	subw	a0,s6,a0
    80007128:	03013b03          	ld	s6,48(sp)
    8000712c:	07010113          	addi	sp,sp,112
    80007130:	00008067          	ret
    80007134:	00001097          	auipc	ra,0x1
    80007138:	1d8080e7          	jalr	472(ra) # 8000830c <push_on>
    8000713c:	0984a703          	lw	a4,152(s1)
    80007140:	09c4a783          	lw	a5,156(s1)
    80007144:	0007879b          	sext.w	a5,a5
    80007148:	fef70ce3          	beq	a4,a5,80007140 <consoleread+0xfc>
    8000714c:	00001097          	auipc	ra,0x1
    80007150:	234080e7          	jalr	564(ra) # 80008380 <pop_on>
    80007154:	0984a783          	lw	a5,152(s1)
    80007158:	07f7f713          	andi	a4,a5,127
    8000715c:	00e48733          	add	a4,s1,a4
    80007160:	01874703          	lbu	a4,24(a4)
    80007164:	0017869b          	addiw	a3,a5,1
    80007168:	08d4ac23          	sw	a3,152(s1)
    8000716c:	00070c9b          	sext.w	s9,a4
    80007170:	f5371ee3          	bne	a4,s3,800070cc <consoleread+0x88>
    80007174:	000b851b          	sext.w	a0,s7
    80007178:	f96bf2e3          	bgeu	s7,s6,800070fc <consoleread+0xb8>
    8000717c:	08f4ac23          	sw	a5,152(s1)
    80007180:	f7dff06f          	j	800070fc <consoleread+0xb8>

0000000080007184 <consputc>:
    80007184:	10000793          	li	a5,256
    80007188:	00f50663          	beq	a0,a5,80007194 <consputc+0x10>
    8000718c:	00001317          	auipc	t1,0x1
    80007190:	9f430067          	jr	-1548(t1) # 80007b80 <uartputc_sync>
    80007194:	ff010113          	addi	sp,sp,-16
    80007198:	00113423          	sd	ra,8(sp)
    8000719c:	00813023          	sd	s0,0(sp)
    800071a0:	01010413          	addi	s0,sp,16
    800071a4:	00800513          	li	a0,8
    800071a8:	00001097          	auipc	ra,0x1
    800071ac:	9d8080e7          	jalr	-1576(ra) # 80007b80 <uartputc_sync>
    800071b0:	02000513          	li	a0,32
    800071b4:	00001097          	auipc	ra,0x1
    800071b8:	9cc080e7          	jalr	-1588(ra) # 80007b80 <uartputc_sync>
    800071bc:	00013403          	ld	s0,0(sp)
    800071c0:	00813083          	ld	ra,8(sp)
    800071c4:	00800513          	li	a0,8
    800071c8:	01010113          	addi	sp,sp,16
    800071cc:	00001317          	auipc	t1,0x1
    800071d0:	9b430067          	jr	-1612(t1) # 80007b80 <uartputc_sync>

00000000800071d4 <consoleintr>:
    800071d4:	fe010113          	addi	sp,sp,-32
    800071d8:	00813823          	sd	s0,16(sp)
    800071dc:	00913423          	sd	s1,8(sp)
    800071e0:	01213023          	sd	s2,0(sp)
    800071e4:	00113c23          	sd	ra,24(sp)
    800071e8:	02010413          	addi	s0,sp,32
    800071ec:	0000e917          	auipc	s2,0xe
    800071f0:	c3c90913          	addi	s2,s2,-964 # 80014e28 <cons>
    800071f4:	00050493          	mv	s1,a0
    800071f8:	00090513          	mv	a0,s2
    800071fc:	00001097          	auipc	ra,0x1
    80007200:	e40080e7          	jalr	-448(ra) # 8000803c <acquire>
    80007204:	02048c63          	beqz	s1,8000723c <consoleintr+0x68>
    80007208:	0a092783          	lw	a5,160(s2)
    8000720c:	09892703          	lw	a4,152(s2)
    80007210:	07f00693          	li	a3,127
    80007214:	40e7873b          	subw	a4,a5,a4
    80007218:	02e6e263          	bltu	a3,a4,8000723c <consoleintr+0x68>
    8000721c:	00d00713          	li	a4,13
    80007220:	04e48063          	beq	s1,a4,80007260 <consoleintr+0x8c>
    80007224:	07f7f713          	andi	a4,a5,127
    80007228:	00e90733          	add	a4,s2,a4
    8000722c:	0017879b          	addiw	a5,a5,1
    80007230:	0af92023          	sw	a5,160(s2)
    80007234:	00970c23          	sb	s1,24(a4)
    80007238:	08f92e23          	sw	a5,156(s2)
    8000723c:	01013403          	ld	s0,16(sp)
    80007240:	01813083          	ld	ra,24(sp)
    80007244:	00813483          	ld	s1,8(sp)
    80007248:	00013903          	ld	s2,0(sp)
    8000724c:	0000e517          	auipc	a0,0xe
    80007250:	bdc50513          	addi	a0,a0,-1060 # 80014e28 <cons>
    80007254:	02010113          	addi	sp,sp,32
    80007258:	00001317          	auipc	t1,0x1
    8000725c:	eb030067          	jr	-336(t1) # 80008108 <release>
    80007260:	00a00493          	li	s1,10
    80007264:	fc1ff06f          	j	80007224 <consoleintr+0x50>

0000000080007268 <consoleinit>:
    80007268:	fe010113          	addi	sp,sp,-32
    8000726c:	00113c23          	sd	ra,24(sp)
    80007270:	00813823          	sd	s0,16(sp)
    80007274:	00913423          	sd	s1,8(sp)
    80007278:	02010413          	addi	s0,sp,32
    8000727c:	0000e497          	auipc	s1,0xe
    80007280:	bac48493          	addi	s1,s1,-1108 # 80014e28 <cons>
    80007284:	00048513          	mv	a0,s1
    80007288:	00002597          	auipc	a1,0x2
    8000728c:	46058593          	addi	a1,a1,1120 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80007290:	00001097          	auipc	ra,0x1
    80007294:	d88080e7          	jalr	-632(ra) # 80008018 <initlock>
    80007298:	00000097          	auipc	ra,0x0
    8000729c:	7ac080e7          	jalr	1964(ra) # 80007a44 <uartinit>
    800072a0:	01813083          	ld	ra,24(sp)
    800072a4:	01013403          	ld	s0,16(sp)
    800072a8:	00000797          	auipc	a5,0x0
    800072ac:	d9c78793          	addi	a5,a5,-612 # 80007044 <consoleread>
    800072b0:	0af4bc23          	sd	a5,184(s1)
    800072b4:	00000797          	auipc	a5,0x0
    800072b8:	cec78793          	addi	a5,a5,-788 # 80006fa0 <consolewrite>
    800072bc:	0cf4b023          	sd	a5,192(s1)
    800072c0:	00813483          	ld	s1,8(sp)
    800072c4:	02010113          	addi	sp,sp,32
    800072c8:	00008067          	ret

00000000800072cc <console_read>:
    800072cc:	ff010113          	addi	sp,sp,-16
    800072d0:	00813423          	sd	s0,8(sp)
    800072d4:	01010413          	addi	s0,sp,16
    800072d8:	00813403          	ld	s0,8(sp)
    800072dc:	0000e317          	auipc	t1,0xe
    800072e0:	c0433303          	ld	t1,-1020(t1) # 80014ee0 <devsw+0x10>
    800072e4:	01010113          	addi	sp,sp,16
    800072e8:	00030067          	jr	t1

00000000800072ec <console_write>:
    800072ec:	ff010113          	addi	sp,sp,-16
    800072f0:	00813423          	sd	s0,8(sp)
    800072f4:	01010413          	addi	s0,sp,16
    800072f8:	00813403          	ld	s0,8(sp)
    800072fc:	0000e317          	auipc	t1,0xe
    80007300:	bec33303          	ld	t1,-1044(t1) # 80014ee8 <devsw+0x18>
    80007304:	01010113          	addi	sp,sp,16
    80007308:	00030067          	jr	t1

000000008000730c <panic>:
    8000730c:	fe010113          	addi	sp,sp,-32
    80007310:	00113c23          	sd	ra,24(sp)
    80007314:	00813823          	sd	s0,16(sp)
    80007318:	00913423          	sd	s1,8(sp)
    8000731c:	02010413          	addi	s0,sp,32
    80007320:	00050493          	mv	s1,a0
    80007324:	00002517          	auipc	a0,0x2
    80007328:	3cc50513          	addi	a0,a0,972 # 800096f0 <CONSOLE_STATUS+0x6e0>
    8000732c:	0000e797          	auipc	a5,0xe
    80007330:	c407ae23          	sw	zero,-932(a5) # 80014f88 <pr+0x18>
    80007334:	00000097          	auipc	ra,0x0
    80007338:	034080e7          	jalr	52(ra) # 80007368 <__printf>
    8000733c:	00048513          	mv	a0,s1
    80007340:	00000097          	auipc	ra,0x0
    80007344:	028080e7          	jalr	40(ra) # 80007368 <__printf>
    80007348:	00002517          	auipc	a0,0x2
    8000734c:	e3850513          	addi	a0,a0,-456 # 80009180 <CONSOLE_STATUS+0x170>
    80007350:	00000097          	auipc	ra,0x0
    80007354:	018080e7          	jalr	24(ra) # 80007368 <__printf>
    80007358:	00100793          	li	a5,1
    8000735c:	00005717          	auipc	a4,0x5
    80007360:	8cf72e23          	sw	a5,-1828(a4) # 8000bc38 <panicked>
    80007364:	0000006f          	j	80007364 <panic+0x58>

0000000080007368 <__printf>:
    80007368:	f3010113          	addi	sp,sp,-208
    8000736c:	08813023          	sd	s0,128(sp)
    80007370:	07313423          	sd	s3,104(sp)
    80007374:	09010413          	addi	s0,sp,144
    80007378:	05813023          	sd	s8,64(sp)
    8000737c:	08113423          	sd	ra,136(sp)
    80007380:	06913c23          	sd	s1,120(sp)
    80007384:	07213823          	sd	s2,112(sp)
    80007388:	07413023          	sd	s4,96(sp)
    8000738c:	05513c23          	sd	s5,88(sp)
    80007390:	05613823          	sd	s6,80(sp)
    80007394:	05713423          	sd	s7,72(sp)
    80007398:	03913c23          	sd	s9,56(sp)
    8000739c:	03a13823          	sd	s10,48(sp)
    800073a0:	03b13423          	sd	s11,40(sp)
    800073a4:	0000e317          	auipc	t1,0xe
    800073a8:	bcc30313          	addi	t1,t1,-1076 # 80014f70 <pr>
    800073ac:	01832c03          	lw	s8,24(t1)
    800073b0:	00b43423          	sd	a1,8(s0)
    800073b4:	00c43823          	sd	a2,16(s0)
    800073b8:	00d43c23          	sd	a3,24(s0)
    800073bc:	02e43023          	sd	a4,32(s0)
    800073c0:	02f43423          	sd	a5,40(s0)
    800073c4:	03043823          	sd	a6,48(s0)
    800073c8:	03143c23          	sd	a7,56(s0)
    800073cc:	00050993          	mv	s3,a0
    800073d0:	4a0c1663          	bnez	s8,8000787c <__printf+0x514>
    800073d4:	60098c63          	beqz	s3,800079ec <__printf+0x684>
    800073d8:	0009c503          	lbu	a0,0(s3)
    800073dc:	00840793          	addi	a5,s0,8
    800073e0:	f6f43c23          	sd	a5,-136(s0)
    800073e4:	00000493          	li	s1,0
    800073e8:	22050063          	beqz	a0,80007608 <__printf+0x2a0>
    800073ec:	00002a37          	lui	s4,0x2
    800073f0:	00018ab7          	lui	s5,0x18
    800073f4:	000f4b37          	lui	s6,0xf4
    800073f8:	00989bb7          	lui	s7,0x989
    800073fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007400:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007404:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007408:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000740c:	00148c9b          	addiw	s9,s1,1
    80007410:	02500793          	li	a5,37
    80007414:	01998933          	add	s2,s3,s9
    80007418:	38f51263          	bne	a0,a5,8000779c <__printf+0x434>
    8000741c:	00094783          	lbu	a5,0(s2)
    80007420:	00078c9b          	sext.w	s9,a5
    80007424:	1e078263          	beqz	a5,80007608 <__printf+0x2a0>
    80007428:	0024849b          	addiw	s1,s1,2
    8000742c:	07000713          	li	a4,112
    80007430:	00998933          	add	s2,s3,s1
    80007434:	38e78a63          	beq	a5,a4,800077c8 <__printf+0x460>
    80007438:	20f76863          	bltu	a4,a5,80007648 <__printf+0x2e0>
    8000743c:	42a78863          	beq	a5,a0,8000786c <__printf+0x504>
    80007440:	06400713          	li	a4,100
    80007444:	40e79663          	bne	a5,a4,80007850 <__printf+0x4e8>
    80007448:	f7843783          	ld	a5,-136(s0)
    8000744c:	0007a603          	lw	a2,0(a5)
    80007450:	00878793          	addi	a5,a5,8
    80007454:	f6f43c23          	sd	a5,-136(s0)
    80007458:	42064a63          	bltz	a2,8000788c <__printf+0x524>
    8000745c:	00a00713          	li	a4,10
    80007460:	02e677bb          	remuw	a5,a2,a4
    80007464:	00002d97          	auipc	s11,0x2
    80007468:	2b4d8d93          	addi	s11,s11,692 # 80009718 <digits>
    8000746c:	00900593          	li	a1,9
    80007470:	0006051b          	sext.w	a0,a2
    80007474:	00000c93          	li	s9,0
    80007478:	02079793          	slli	a5,a5,0x20
    8000747c:	0207d793          	srli	a5,a5,0x20
    80007480:	00fd87b3          	add	a5,s11,a5
    80007484:	0007c783          	lbu	a5,0(a5)
    80007488:	02e656bb          	divuw	a3,a2,a4
    8000748c:	f8f40023          	sb	a5,-128(s0)
    80007490:	14c5d863          	bge	a1,a2,800075e0 <__printf+0x278>
    80007494:	06300593          	li	a1,99
    80007498:	00100c93          	li	s9,1
    8000749c:	02e6f7bb          	remuw	a5,a3,a4
    800074a0:	02079793          	slli	a5,a5,0x20
    800074a4:	0207d793          	srli	a5,a5,0x20
    800074a8:	00fd87b3          	add	a5,s11,a5
    800074ac:	0007c783          	lbu	a5,0(a5)
    800074b0:	02e6d73b          	divuw	a4,a3,a4
    800074b4:	f8f400a3          	sb	a5,-127(s0)
    800074b8:	12a5f463          	bgeu	a1,a0,800075e0 <__printf+0x278>
    800074bc:	00a00693          	li	a3,10
    800074c0:	00900593          	li	a1,9
    800074c4:	02d777bb          	remuw	a5,a4,a3
    800074c8:	02079793          	slli	a5,a5,0x20
    800074cc:	0207d793          	srli	a5,a5,0x20
    800074d0:	00fd87b3          	add	a5,s11,a5
    800074d4:	0007c503          	lbu	a0,0(a5)
    800074d8:	02d757bb          	divuw	a5,a4,a3
    800074dc:	f8a40123          	sb	a0,-126(s0)
    800074e0:	48e5f263          	bgeu	a1,a4,80007964 <__printf+0x5fc>
    800074e4:	06300513          	li	a0,99
    800074e8:	02d7f5bb          	remuw	a1,a5,a3
    800074ec:	02059593          	slli	a1,a1,0x20
    800074f0:	0205d593          	srli	a1,a1,0x20
    800074f4:	00bd85b3          	add	a1,s11,a1
    800074f8:	0005c583          	lbu	a1,0(a1)
    800074fc:	02d7d7bb          	divuw	a5,a5,a3
    80007500:	f8b401a3          	sb	a1,-125(s0)
    80007504:	48e57263          	bgeu	a0,a4,80007988 <__printf+0x620>
    80007508:	3e700513          	li	a0,999
    8000750c:	02d7f5bb          	remuw	a1,a5,a3
    80007510:	02059593          	slli	a1,a1,0x20
    80007514:	0205d593          	srli	a1,a1,0x20
    80007518:	00bd85b3          	add	a1,s11,a1
    8000751c:	0005c583          	lbu	a1,0(a1)
    80007520:	02d7d7bb          	divuw	a5,a5,a3
    80007524:	f8b40223          	sb	a1,-124(s0)
    80007528:	46e57663          	bgeu	a0,a4,80007994 <__printf+0x62c>
    8000752c:	02d7f5bb          	remuw	a1,a5,a3
    80007530:	02059593          	slli	a1,a1,0x20
    80007534:	0205d593          	srli	a1,a1,0x20
    80007538:	00bd85b3          	add	a1,s11,a1
    8000753c:	0005c583          	lbu	a1,0(a1)
    80007540:	02d7d7bb          	divuw	a5,a5,a3
    80007544:	f8b402a3          	sb	a1,-123(s0)
    80007548:	46ea7863          	bgeu	s4,a4,800079b8 <__printf+0x650>
    8000754c:	02d7f5bb          	remuw	a1,a5,a3
    80007550:	02059593          	slli	a1,a1,0x20
    80007554:	0205d593          	srli	a1,a1,0x20
    80007558:	00bd85b3          	add	a1,s11,a1
    8000755c:	0005c583          	lbu	a1,0(a1)
    80007560:	02d7d7bb          	divuw	a5,a5,a3
    80007564:	f8b40323          	sb	a1,-122(s0)
    80007568:	3eeaf863          	bgeu	s5,a4,80007958 <__printf+0x5f0>
    8000756c:	02d7f5bb          	remuw	a1,a5,a3
    80007570:	02059593          	slli	a1,a1,0x20
    80007574:	0205d593          	srli	a1,a1,0x20
    80007578:	00bd85b3          	add	a1,s11,a1
    8000757c:	0005c583          	lbu	a1,0(a1)
    80007580:	02d7d7bb          	divuw	a5,a5,a3
    80007584:	f8b403a3          	sb	a1,-121(s0)
    80007588:	42eb7e63          	bgeu	s6,a4,800079c4 <__printf+0x65c>
    8000758c:	02d7f5bb          	remuw	a1,a5,a3
    80007590:	02059593          	slli	a1,a1,0x20
    80007594:	0205d593          	srli	a1,a1,0x20
    80007598:	00bd85b3          	add	a1,s11,a1
    8000759c:	0005c583          	lbu	a1,0(a1)
    800075a0:	02d7d7bb          	divuw	a5,a5,a3
    800075a4:	f8b40423          	sb	a1,-120(s0)
    800075a8:	42ebfc63          	bgeu	s7,a4,800079e0 <__printf+0x678>
    800075ac:	02079793          	slli	a5,a5,0x20
    800075b0:	0207d793          	srli	a5,a5,0x20
    800075b4:	00fd8db3          	add	s11,s11,a5
    800075b8:	000dc703          	lbu	a4,0(s11)
    800075bc:	00a00793          	li	a5,10
    800075c0:	00900c93          	li	s9,9
    800075c4:	f8e404a3          	sb	a4,-119(s0)
    800075c8:	00065c63          	bgez	a2,800075e0 <__printf+0x278>
    800075cc:	f9040713          	addi	a4,s0,-112
    800075d0:	00f70733          	add	a4,a4,a5
    800075d4:	02d00693          	li	a3,45
    800075d8:	fed70823          	sb	a3,-16(a4)
    800075dc:	00078c93          	mv	s9,a5
    800075e0:	f8040793          	addi	a5,s0,-128
    800075e4:	01978cb3          	add	s9,a5,s9
    800075e8:	f7f40d13          	addi	s10,s0,-129
    800075ec:	000cc503          	lbu	a0,0(s9)
    800075f0:	fffc8c93          	addi	s9,s9,-1
    800075f4:	00000097          	auipc	ra,0x0
    800075f8:	b90080e7          	jalr	-1136(ra) # 80007184 <consputc>
    800075fc:	ffac98e3          	bne	s9,s10,800075ec <__printf+0x284>
    80007600:	00094503          	lbu	a0,0(s2)
    80007604:	e00514e3          	bnez	a0,8000740c <__printf+0xa4>
    80007608:	1a0c1663          	bnez	s8,800077b4 <__printf+0x44c>
    8000760c:	08813083          	ld	ra,136(sp)
    80007610:	08013403          	ld	s0,128(sp)
    80007614:	07813483          	ld	s1,120(sp)
    80007618:	07013903          	ld	s2,112(sp)
    8000761c:	06813983          	ld	s3,104(sp)
    80007620:	06013a03          	ld	s4,96(sp)
    80007624:	05813a83          	ld	s5,88(sp)
    80007628:	05013b03          	ld	s6,80(sp)
    8000762c:	04813b83          	ld	s7,72(sp)
    80007630:	04013c03          	ld	s8,64(sp)
    80007634:	03813c83          	ld	s9,56(sp)
    80007638:	03013d03          	ld	s10,48(sp)
    8000763c:	02813d83          	ld	s11,40(sp)
    80007640:	0d010113          	addi	sp,sp,208
    80007644:	00008067          	ret
    80007648:	07300713          	li	a4,115
    8000764c:	1ce78a63          	beq	a5,a4,80007820 <__printf+0x4b8>
    80007650:	07800713          	li	a4,120
    80007654:	1ee79e63          	bne	a5,a4,80007850 <__printf+0x4e8>
    80007658:	f7843783          	ld	a5,-136(s0)
    8000765c:	0007a703          	lw	a4,0(a5)
    80007660:	00878793          	addi	a5,a5,8
    80007664:	f6f43c23          	sd	a5,-136(s0)
    80007668:	28074263          	bltz	a4,800078ec <__printf+0x584>
    8000766c:	00002d97          	auipc	s11,0x2
    80007670:	0acd8d93          	addi	s11,s11,172 # 80009718 <digits>
    80007674:	00f77793          	andi	a5,a4,15
    80007678:	00fd87b3          	add	a5,s11,a5
    8000767c:	0007c683          	lbu	a3,0(a5)
    80007680:	00f00613          	li	a2,15
    80007684:	0007079b          	sext.w	a5,a4
    80007688:	f8d40023          	sb	a3,-128(s0)
    8000768c:	0047559b          	srliw	a1,a4,0x4
    80007690:	0047569b          	srliw	a3,a4,0x4
    80007694:	00000c93          	li	s9,0
    80007698:	0ee65063          	bge	a2,a4,80007778 <__printf+0x410>
    8000769c:	00f6f693          	andi	a3,a3,15
    800076a0:	00dd86b3          	add	a3,s11,a3
    800076a4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800076a8:	0087d79b          	srliw	a5,a5,0x8
    800076ac:	00100c93          	li	s9,1
    800076b0:	f8d400a3          	sb	a3,-127(s0)
    800076b4:	0cb67263          	bgeu	a2,a1,80007778 <__printf+0x410>
    800076b8:	00f7f693          	andi	a3,a5,15
    800076bc:	00dd86b3          	add	a3,s11,a3
    800076c0:	0006c583          	lbu	a1,0(a3)
    800076c4:	00f00613          	li	a2,15
    800076c8:	0047d69b          	srliw	a3,a5,0x4
    800076cc:	f8b40123          	sb	a1,-126(s0)
    800076d0:	0047d593          	srli	a1,a5,0x4
    800076d4:	28f67e63          	bgeu	a2,a5,80007970 <__printf+0x608>
    800076d8:	00f6f693          	andi	a3,a3,15
    800076dc:	00dd86b3          	add	a3,s11,a3
    800076e0:	0006c503          	lbu	a0,0(a3)
    800076e4:	0087d813          	srli	a6,a5,0x8
    800076e8:	0087d69b          	srliw	a3,a5,0x8
    800076ec:	f8a401a3          	sb	a0,-125(s0)
    800076f0:	28b67663          	bgeu	a2,a1,8000797c <__printf+0x614>
    800076f4:	00f6f693          	andi	a3,a3,15
    800076f8:	00dd86b3          	add	a3,s11,a3
    800076fc:	0006c583          	lbu	a1,0(a3)
    80007700:	00c7d513          	srli	a0,a5,0xc
    80007704:	00c7d69b          	srliw	a3,a5,0xc
    80007708:	f8b40223          	sb	a1,-124(s0)
    8000770c:	29067a63          	bgeu	a2,a6,800079a0 <__printf+0x638>
    80007710:	00f6f693          	andi	a3,a3,15
    80007714:	00dd86b3          	add	a3,s11,a3
    80007718:	0006c583          	lbu	a1,0(a3)
    8000771c:	0107d813          	srli	a6,a5,0x10
    80007720:	0107d69b          	srliw	a3,a5,0x10
    80007724:	f8b402a3          	sb	a1,-123(s0)
    80007728:	28a67263          	bgeu	a2,a0,800079ac <__printf+0x644>
    8000772c:	00f6f693          	andi	a3,a3,15
    80007730:	00dd86b3          	add	a3,s11,a3
    80007734:	0006c683          	lbu	a3,0(a3)
    80007738:	0147d79b          	srliw	a5,a5,0x14
    8000773c:	f8d40323          	sb	a3,-122(s0)
    80007740:	21067663          	bgeu	a2,a6,8000794c <__printf+0x5e4>
    80007744:	02079793          	slli	a5,a5,0x20
    80007748:	0207d793          	srli	a5,a5,0x20
    8000774c:	00fd8db3          	add	s11,s11,a5
    80007750:	000dc683          	lbu	a3,0(s11)
    80007754:	00800793          	li	a5,8
    80007758:	00700c93          	li	s9,7
    8000775c:	f8d403a3          	sb	a3,-121(s0)
    80007760:	00075c63          	bgez	a4,80007778 <__printf+0x410>
    80007764:	f9040713          	addi	a4,s0,-112
    80007768:	00f70733          	add	a4,a4,a5
    8000776c:	02d00693          	li	a3,45
    80007770:	fed70823          	sb	a3,-16(a4)
    80007774:	00078c93          	mv	s9,a5
    80007778:	f8040793          	addi	a5,s0,-128
    8000777c:	01978cb3          	add	s9,a5,s9
    80007780:	f7f40d13          	addi	s10,s0,-129
    80007784:	000cc503          	lbu	a0,0(s9)
    80007788:	fffc8c93          	addi	s9,s9,-1
    8000778c:	00000097          	auipc	ra,0x0
    80007790:	9f8080e7          	jalr	-1544(ra) # 80007184 <consputc>
    80007794:	ff9d18e3          	bne	s10,s9,80007784 <__printf+0x41c>
    80007798:	0100006f          	j	800077a8 <__printf+0x440>
    8000779c:	00000097          	auipc	ra,0x0
    800077a0:	9e8080e7          	jalr	-1560(ra) # 80007184 <consputc>
    800077a4:	000c8493          	mv	s1,s9
    800077a8:	00094503          	lbu	a0,0(s2)
    800077ac:	c60510e3          	bnez	a0,8000740c <__printf+0xa4>
    800077b0:	e40c0ee3          	beqz	s8,8000760c <__printf+0x2a4>
    800077b4:	0000d517          	auipc	a0,0xd
    800077b8:	7bc50513          	addi	a0,a0,1980 # 80014f70 <pr>
    800077bc:	00001097          	auipc	ra,0x1
    800077c0:	94c080e7          	jalr	-1716(ra) # 80008108 <release>
    800077c4:	e49ff06f          	j	8000760c <__printf+0x2a4>
    800077c8:	f7843783          	ld	a5,-136(s0)
    800077cc:	03000513          	li	a0,48
    800077d0:	01000d13          	li	s10,16
    800077d4:	00878713          	addi	a4,a5,8
    800077d8:	0007bc83          	ld	s9,0(a5)
    800077dc:	f6e43c23          	sd	a4,-136(s0)
    800077e0:	00000097          	auipc	ra,0x0
    800077e4:	9a4080e7          	jalr	-1628(ra) # 80007184 <consputc>
    800077e8:	07800513          	li	a0,120
    800077ec:	00000097          	auipc	ra,0x0
    800077f0:	998080e7          	jalr	-1640(ra) # 80007184 <consputc>
    800077f4:	00002d97          	auipc	s11,0x2
    800077f8:	f24d8d93          	addi	s11,s11,-220 # 80009718 <digits>
    800077fc:	03ccd793          	srli	a5,s9,0x3c
    80007800:	00fd87b3          	add	a5,s11,a5
    80007804:	0007c503          	lbu	a0,0(a5)
    80007808:	fffd0d1b          	addiw	s10,s10,-1
    8000780c:	004c9c93          	slli	s9,s9,0x4
    80007810:	00000097          	auipc	ra,0x0
    80007814:	974080e7          	jalr	-1676(ra) # 80007184 <consputc>
    80007818:	fe0d12e3          	bnez	s10,800077fc <__printf+0x494>
    8000781c:	f8dff06f          	j	800077a8 <__printf+0x440>
    80007820:	f7843783          	ld	a5,-136(s0)
    80007824:	0007bc83          	ld	s9,0(a5)
    80007828:	00878793          	addi	a5,a5,8
    8000782c:	f6f43c23          	sd	a5,-136(s0)
    80007830:	000c9a63          	bnez	s9,80007844 <__printf+0x4dc>
    80007834:	1080006f          	j	8000793c <__printf+0x5d4>
    80007838:	001c8c93          	addi	s9,s9,1
    8000783c:	00000097          	auipc	ra,0x0
    80007840:	948080e7          	jalr	-1720(ra) # 80007184 <consputc>
    80007844:	000cc503          	lbu	a0,0(s9)
    80007848:	fe0518e3          	bnez	a0,80007838 <__printf+0x4d0>
    8000784c:	f5dff06f          	j	800077a8 <__printf+0x440>
    80007850:	02500513          	li	a0,37
    80007854:	00000097          	auipc	ra,0x0
    80007858:	930080e7          	jalr	-1744(ra) # 80007184 <consputc>
    8000785c:	000c8513          	mv	a0,s9
    80007860:	00000097          	auipc	ra,0x0
    80007864:	924080e7          	jalr	-1756(ra) # 80007184 <consputc>
    80007868:	f41ff06f          	j	800077a8 <__printf+0x440>
    8000786c:	02500513          	li	a0,37
    80007870:	00000097          	auipc	ra,0x0
    80007874:	914080e7          	jalr	-1772(ra) # 80007184 <consputc>
    80007878:	f31ff06f          	j	800077a8 <__printf+0x440>
    8000787c:	00030513          	mv	a0,t1
    80007880:	00000097          	auipc	ra,0x0
    80007884:	7bc080e7          	jalr	1980(ra) # 8000803c <acquire>
    80007888:	b4dff06f          	j	800073d4 <__printf+0x6c>
    8000788c:	40c0053b          	negw	a0,a2
    80007890:	00a00713          	li	a4,10
    80007894:	02e576bb          	remuw	a3,a0,a4
    80007898:	00002d97          	auipc	s11,0x2
    8000789c:	e80d8d93          	addi	s11,s11,-384 # 80009718 <digits>
    800078a0:	ff700593          	li	a1,-9
    800078a4:	02069693          	slli	a3,a3,0x20
    800078a8:	0206d693          	srli	a3,a3,0x20
    800078ac:	00dd86b3          	add	a3,s11,a3
    800078b0:	0006c683          	lbu	a3,0(a3)
    800078b4:	02e557bb          	divuw	a5,a0,a4
    800078b8:	f8d40023          	sb	a3,-128(s0)
    800078bc:	10b65e63          	bge	a2,a1,800079d8 <__printf+0x670>
    800078c0:	06300593          	li	a1,99
    800078c4:	02e7f6bb          	remuw	a3,a5,a4
    800078c8:	02069693          	slli	a3,a3,0x20
    800078cc:	0206d693          	srli	a3,a3,0x20
    800078d0:	00dd86b3          	add	a3,s11,a3
    800078d4:	0006c683          	lbu	a3,0(a3)
    800078d8:	02e7d73b          	divuw	a4,a5,a4
    800078dc:	00200793          	li	a5,2
    800078e0:	f8d400a3          	sb	a3,-127(s0)
    800078e4:	bca5ece3          	bltu	a1,a0,800074bc <__printf+0x154>
    800078e8:	ce5ff06f          	j	800075cc <__printf+0x264>
    800078ec:	40e007bb          	negw	a5,a4
    800078f0:	00002d97          	auipc	s11,0x2
    800078f4:	e28d8d93          	addi	s11,s11,-472 # 80009718 <digits>
    800078f8:	00f7f693          	andi	a3,a5,15
    800078fc:	00dd86b3          	add	a3,s11,a3
    80007900:	0006c583          	lbu	a1,0(a3)
    80007904:	ff100613          	li	a2,-15
    80007908:	0047d69b          	srliw	a3,a5,0x4
    8000790c:	f8b40023          	sb	a1,-128(s0)
    80007910:	0047d59b          	srliw	a1,a5,0x4
    80007914:	0ac75e63          	bge	a4,a2,800079d0 <__printf+0x668>
    80007918:	00f6f693          	andi	a3,a3,15
    8000791c:	00dd86b3          	add	a3,s11,a3
    80007920:	0006c603          	lbu	a2,0(a3)
    80007924:	00f00693          	li	a3,15
    80007928:	0087d79b          	srliw	a5,a5,0x8
    8000792c:	f8c400a3          	sb	a2,-127(s0)
    80007930:	d8b6e4e3          	bltu	a3,a1,800076b8 <__printf+0x350>
    80007934:	00200793          	li	a5,2
    80007938:	e2dff06f          	j	80007764 <__printf+0x3fc>
    8000793c:	00002c97          	auipc	s9,0x2
    80007940:	dbcc8c93          	addi	s9,s9,-580 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80007944:	02800513          	li	a0,40
    80007948:	ef1ff06f          	j	80007838 <__printf+0x4d0>
    8000794c:	00700793          	li	a5,7
    80007950:	00600c93          	li	s9,6
    80007954:	e0dff06f          	j	80007760 <__printf+0x3f8>
    80007958:	00700793          	li	a5,7
    8000795c:	00600c93          	li	s9,6
    80007960:	c69ff06f          	j	800075c8 <__printf+0x260>
    80007964:	00300793          	li	a5,3
    80007968:	00200c93          	li	s9,2
    8000796c:	c5dff06f          	j	800075c8 <__printf+0x260>
    80007970:	00300793          	li	a5,3
    80007974:	00200c93          	li	s9,2
    80007978:	de9ff06f          	j	80007760 <__printf+0x3f8>
    8000797c:	00400793          	li	a5,4
    80007980:	00300c93          	li	s9,3
    80007984:	dddff06f          	j	80007760 <__printf+0x3f8>
    80007988:	00400793          	li	a5,4
    8000798c:	00300c93          	li	s9,3
    80007990:	c39ff06f          	j	800075c8 <__printf+0x260>
    80007994:	00500793          	li	a5,5
    80007998:	00400c93          	li	s9,4
    8000799c:	c2dff06f          	j	800075c8 <__printf+0x260>
    800079a0:	00500793          	li	a5,5
    800079a4:	00400c93          	li	s9,4
    800079a8:	db9ff06f          	j	80007760 <__printf+0x3f8>
    800079ac:	00600793          	li	a5,6
    800079b0:	00500c93          	li	s9,5
    800079b4:	dadff06f          	j	80007760 <__printf+0x3f8>
    800079b8:	00600793          	li	a5,6
    800079bc:	00500c93          	li	s9,5
    800079c0:	c09ff06f          	j	800075c8 <__printf+0x260>
    800079c4:	00800793          	li	a5,8
    800079c8:	00700c93          	li	s9,7
    800079cc:	bfdff06f          	j	800075c8 <__printf+0x260>
    800079d0:	00100793          	li	a5,1
    800079d4:	d91ff06f          	j	80007764 <__printf+0x3fc>
    800079d8:	00100793          	li	a5,1
    800079dc:	bf1ff06f          	j	800075cc <__printf+0x264>
    800079e0:	00900793          	li	a5,9
    800079e4:	00800c93          	li	s9,8
    800079e8:	be1ff06f          	j	800075c8 <__printf+0x260>
    800079ec:	00002517          	auipc	a0,0x2
    800079f0:	d1450513          	addi	a0,a0,-748 # 80009700 <CONSOLE_STATUS+0x6f0>
    800079f4:	00000097          	auipc	ra,0x0
    800079f8:	918080e7          	jalr	-1768(ra) # 8000730c <panic>

00000000800079fc <printfinit>:
    800079fc:	fe010113          	addi	sp,sp,-32
    80007a00:	00813823          	sd	s0,16(sp)
    80007a04:	00913423          	sd	s1,8(sp)
    80007a08:	00113c23          	sd	ra,24(sp)
    80007a0c:	02010413          	addi	s0,sp,32
    80007a10:	0000d497          	auipc	s1,0xd
    80007a14:	56048493          	addi	s1,s1,1376 # 80014f70 <pr>
    80007a18:	00048513          	mv	a0,s1
    80007a1c:	00002597          	auipc	a1,0x2
    80007a20:	cf458593          	addi	a1,a1,-780 # 80009710 <CONSOLE_STATUS+0x700>
    80007a24:	00000097          	auipc	ra,0x0
    80007a28:	5f4080e7          	jalr	1524(ra) # 80008018 <initlock>
    80007a2c:	01813083          	ld	ra,24(sp)
    80007a30:	01013403          	ld	s0,16(sp)
    80007a34:	0004ac23          	sw	zero,24(s1)
    80007a38:	00813483          	ld	s1,8(sp)
    80007a3c:	02010113          	addi	sp,sp,32
    80007a40:	00008067          	ret

0000000080007a44 <uartinit>:
    80007a44:	ff010113          	addi	sp,sp,-16
    80007a48:	00813423          	sd	s0,8(sp)
    80007a4c:	01010413          	addi	s0,sp,16
    80007a50:	100007b7          	lui	a5,0x10000
    80007a54:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007a58:	f8000713          	li	a4,-128
    80007a5c:	00e781a3          	sb	a4,3(a5)
    80007a60:	00300713          	li	a4,3
    80007a64:	00e78023          	sb	a4,0(a5)
    80007a68:	000780a3          	sb	zero,1(a5)
    80007a6c:	00e781a3          	sb	a4,3(a5)
    80007a70:	00700693          	li	a3,7
    80007a74:	00d78123          	sb	a3,2(a5)
    80007a78:	00e780a3          	sb	a4,1(a5)
    80007a7c:	00813403          	ld	s0,8(sp)
    80007a80:	01010113          	addi	sp,sp,16
    80007a84:	00008067          	ret

0000000080007a88 <uartputc>:
    80007a88:	00004797          	auipc	a5,0x4
    80007a8c:	1b07a783          	lw	a5,432(a5) # 8000bc38 <panicked>
    80007a90:	00078463          	beqz	a5,80007a98 <uartputc+0x10>
    80007a94:	0000006f          	j	80007a94 <uartputc+0xc>
    80007a98:	fd010113          	addi	sp,sp,-48
    80007a9c:	02813023          	sd	s0,32(sp)
    80007aa0:	00913c23          	sd	s1,24(sp)
    80007aa4:	01213823          	sd	s2,16(sp)
    80007aa8:	01313423          	sd	s3,8(sp)
    80007aac:	02113423          	sd	ra,40(sp)
    80007ab0:	03010413          	addi	s0,sp,48
    80007ab4:	00004917          	auipc	s2,0x4
    80007ab8:	18c90913          	addi	s2,s2,396 # 8000bc40 <uart_tx_r>
    80007abc:	00093783          	ld	a5,0(s2)
    80007ac0:	00004497          	auipc	s1,0x4
    80007ac4:	18848493          	addi	s1,s1,392 # 8000bc48 <uart_tx_w>
    80007ac8:	0004b703          	ld	a4,0(s1)
    80007acc:	02078693          	addi	a3,a5,32
    80007ad0:	00050993          	mv	s3,a0
    80007ad4:	02e69c63          	bne	a3,a4,80007b0c <uartputc+0x84>
    80007ad8:	00001097          	auipc	ra,0x1
    80007adc:	834080e7          	jalr	-1996(ra) # 8000830c <push_on>
    80007ae0:	00093783          	ld	a5,0(s2)
    80007ae4:	0004b703          	ld	a4,0(s1)
    80007ae8:	02078793          	addi	a5,a5,32
    80007aec:	00e79463          	bne	a5,a4,80007af4 <uartputc+0x6c>
    80007af0:	0000006f          	j	80007af0 <uartputc+0x68>
    80007af4:	00001097          	auipc	ra,0x1
    80007af8:	88c080e7          	jalr	-1908(ra) # 80008380 <pop_on>
    80007afc:	00093783          	ld	a5,0(s2)
    80007b00:	0004b703          	ld	a4,0(s1)
    80007b04:	02078693          	addi	a3,a5,32
    80007b08:	fce688e3          	beq	a3,a4,80007ad8 <uartputc+0x50>
    80007b0c:	01f77693          	andi	a3,a4,31
    80007b10:	0000d597          	auipc	a1,0xd
    80007b14:	48058593          	addi	a1,a1,1152 # 80014f90 <uart_tx_buf>
    80007b18:	00d586b3          	add	a3,a1,a3
    80007b1c:	00170713          	addi	a4,a4,1
    80007b20:	01368023          	sb	s3,0(a3)
    80007b24:	00e4b023          	sd	a4,0(s1)
    80007b28:	10000637          	lui	a2,0x10000
    80007b2c:	02f71063          	bne	a4,a5,80007b4c <uartputc+0xc4>
    80007b30:	0340006f          	j	80007b64 <uartputc+0xdc>
    80007b34:	00074703          	lbu	a4,0(a4)
    80007b38:	00f93023          	sd	a5,0(s2)
    80007b3c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007b40:	00093783          	ld	a5,0(s2)
    80007b44:	0004b703          	ld	a4,0(s1)
    80007b48:	00f70e63          	beq	a4,a5,80007b64 <uartputc+0xdc>
    80007b4c:	00564683          	lbu	a3,5(a2)
    80007b50:	01f7f713          	andi	a4,a5,31
    80007b54:	00e58733          	add	a4,a1,a4
    80007b58:	0206f693          	andi	a3,a3,32
    80007b5c:	00178793          	addi	a5,a5,1
    80007b60:	fc069ae3          	bnez	a3,80007b34 <uartputc+0xac>
    80007b64:	02813083          	ld	ra,40(sp)
    80007b68:	02013403          	ld	s0,32(sp)
    80007b6c:	01813483          	ld	s1,24(sp)
    80007b70:	01013903          	ld	s2,16(sp)
    80007b74:	00813983          	ld	s3,8(sp)
    80007b78:	03010113          	addi	sp,sp,48
    80007b7c:	00008067          	ret

0000000080007b80 <uartputc_sync>:
    80007b80:	ff010113          	addi	sp,sp,-16
    80007b84:	00813423          	sd	s0,8(sp)
    80007b88:	01010413          	addi	s0,sp,16
    80007b8c:	00004717          	auipc	a4,0x4
    80007b90:	0ac72703          	lw	a4,172(a4) # 8000bc38 <panicked>
    80007b94:	02071663          	bnez	a4,80007bc0 <uartputc_sync+0x40>
    80007b98:	00050793          	mv	a5,a0
    80007b9c:	100006b7          	lui	a3,0x10000
    80007ba0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007ba4:	02077713          	andi	a4,a4,32
    80007ba8:	fe070ce3          	beqz	a4,80007ba0 <uartputc_sync+0x20>
    80007bac:	0ff7f793          	andi	a5,a5,255
    80007bb0:	00f68023          	sb	a5,0(a3)
    80007bb4:	00813403          	ld	s0,8(sp)
    80007bb8:	01010113          	addi	sp,sp,16
    80007bbc:	00008067          	ret
    80007bc0:	0000006f          	j	80007bc0 <uartputc_sync+0x40>

0000000080007bc4 <uartstart>:
    80007bc4:	ff010113          	addi	sp,sp,-16
    80007bc8:	00813423          	sd	s0,8(sp)
    80007bcc:	01010413          	addi	s0,sp,16
    80007bd0:	00004617          	auipc	a2,0x4
    80007bd4:	07060613          	addi	a2,a2,112 # 8000bc40 <uart_tx_r>
    80007bd8:	00004517          	auipc	a0,0x4
    80007bdc:	07050513          	addi	a0,a0,112 # 8000bc48 <uart_tx_w>
    80007be0:	00063783          	ld	a5,0(a2)
    80007be4:	00053703          	ld	a4,0(a0)
    80007be8:	04f70263          	beq	a4,a5,80007c2c <uartstart+0x68>
    80007bec:	100005b7          	lui	a1,0x10000
    80007bf0:	0000d817          	auipc	a6,0xd
    80007bf4:	3a080813          	addi	a6,a6,928 # 80014f90 <uart_tx_buf>
    80007bf8:	01c0006f          	j	80007c14 <uartstart+0x50>
    80007bfc:	0006c703          	lbu	a4,0(a3)
    80007c00:	00f63023          	sd	a5,0(a2)
    80007c04:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c08:	00063783          	ld	a5,0(a2)
    80007c0c:	00053703          	ld	a4,0(a0)
    80007c10:	00f70e63          	beq	a4,a5,80007c2c <uartstart+0x68>
    80007c14:	01f7f713          	andi	a4,a5,31
    80007c18:	00e806b3          	add	a3,a6,a4
    80007c1c:	0055c703          	lbu	a4,5(a1)
    80007c20:	00178793          	addi	a5,a5,1
    80007c24:	02077713          	andi	a4,a4,32
    80007c28:	fc071ae3          	bnez	a4,80007bfc <uartstart+0x38>
    80007c2c:	00813403          	ld	s0,8(sp)
    80007c30:	01010113          	addi	sp,sp,16
    80007c34:	00008067          	ret

0000000080007c38 <uartgetc>:
    80007c38:	ff010113          	addi	sp,sp,-16
    80007c3c:	00813423          	sd	s0,8(sp)
    80007c40:	01010413          	addi	s0,sp,16
    80007c44:	10000737          	lui	a4,0x10000
    80007c48:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007c4c:	0017f793          	andi	a5,a5,1
    80007c50:	00078c63          	beqz	a5,80007c68 <uartgetc+0x30>
    80007c54:	00074503          	lbu	a0,0(a4)
    80007c58:	0ff57513          	andi	a0,a0,255
    80007c5c:	00813403          	ld	s0,8(sp)
    80007c60:	01010113          	addi	sp,sp,16
    80007c64:	00008067          	ret
    80007c68:	fff00513          	li	a0,-1
    80007c6c:	ff1ff06f          	j	80007c5c <uartgetc+0x24>

0000000080007c70 <uartintr>:
    80007c70:	100007b7          	lui	a5,0x10000
    80007c74:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007c78:	0017f793          	andi	a5,a5,1
    80007c7c:	0a078463          	beqz	a5,80007d24 <uartintr+0xb4>
    80007c80:	fe010113          	addi	sp,sp,-32
    80007c84:	00813823          	sd	s0,16(sp)
    80007c88:	00913423          	sd	s1,8(sp)
    80007c8c:	00113c23          	sd	ra,24(sp)
    80007c90:	02010413          	addi	s0,sp,32
    80007c94:	100004b7          	lui	s1,0x10000
    80007c98:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007c9c:	0ff57513          	andi	a0,a0,255
    80007ca0:	fffff097          	auipc	ra,0xfffff
    80007ca4:	534080e7          	jalr	1332(ra) # 800071d4 <consoleintr>
    80007ca8:	0054c783          	lbu	a5,5(s1)
    80007cac:	0017f793          	andi	a5,a5,1
    80007cb0:	fe0794e3          	bnez	a5,80007c98 <uartintr+0x28>
    80007cb4:	00004617          	auipc	a2,0x4
    80007cb8:	f8c60613          	addi	a2,a2,-116 # 8000bc40 <uart_tx_r>
    80007cbc:	00004517          	auipc	a0,0x4
    80007cc0:	f8c50513          	addi	a0,a0,-116 # 8000bc48 <uart_tx_w>
    80007cc4:	00063783          	ld	a5,0(a2)
    80007cc8:	00053703          	ld	a4,0(a0)
    80007ccc:	04f70263          	beq	a4,a5,80007d10 <uartintr+0xa0>
    80007cd0:	100005b7          	lui	a1,0x10000
    80007cd4:	0000d817          	auipc	a6,0xd
    80007cd8:	2bc80813          	addi	a6,a6,700 # 80014f90 <uart_tx_buf>
    80007cdc:	01c0006f          	j	80007cf8 <uartintr+0x88>
    80007ce0:	0006c703          	lbu	a4,0(a3)
    80007ce4:	00f63023          	sd	a5,0(a2)
    80007ce8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007cec:	00063783          	ld	a5,0(a2)
    80007cf0:	00053703          	ld	a4,0(a0)
    80007cf4:	00f70e63          	beq	a4,a5,80007d10 <uartintr+0xa0>
    80007cf8:	01f7f713          	andi	a4,a5,31
    80007cfc:	00e806b3          	add	a3,a6,a4
    80007d00:	0055c703          	lbu	a4,5(a1)
    80007d04:	00178793          	addi	a5,a5,1
    80007d08:	02077713          	andi	a4,a4,32
    80007d0c:	fc071ae3          	bnez	a4,80007ce0 <uartintr+0x70>
    80007d10:	01813083          	ld	ra,24(sp)
    80007d14:	01013403          	ld	s0,16(sp)
    80007d18:	00813483          	ld	s1,8(sp)
    80007d1c:	02010113          	addi	sp,sp,32
    80007d20:	00008067          	ret
    80007d24:	00004617          	auipc	a2,0x4
    80007d28:	f1c60613          	addi	a2,a2,-228 # 8000bc40 <uart_tx_r>
    80007d2c:	00004517          	auipc	a0,0x4
    80007d30:	f1c50513          	addi	a0,a0,-228 # 8000bc48 <uart_tx_w>
    80007d34:	00063783          	ld	a5,0(a2)
    80007d38:	00053703          	ld	a4,0(a0)
    80007d3c:	04f70263          	beq	a4,a5,80007d80 <uartintr+0x110>
    80007d40:	100005b7          	lui	a1,0x10000
    80007d44:	0000d817          	auipc	a6,0xd
    80007d48:	24c80813          	addi	a6,a6,588 # 80014f90 <uart_tx_buf>
    80007d4c:	01c0006f          	j	80007d68 <uartintr+0xf8>
    80007d50:	0006c703          	lbu	a4,0(a3)
    80007d54:	00f63023          	sd	a5,0(a2)
    80007d58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007d5c:	00063783          	ld	a5,0(a2)
    80007d60:	00053703          	ld	a4,0(a0)
    80007d64:	02f70063          	beq	a4,a5,80007d84 <uartintr+0x114>
    80007d68:	01f7f713          	andi	a4,a5,31
    80007d6c:	00e806b3          	add	a3,a6,a4
    80007d70:	0055c703          	lbu	a4,5(a1)
    80007d74:	00178793          	addi	a5,a5,1
    80007d78:	02077713          	andi	a4,a4,32
    80007d7c:	fc071ae3          	bnez	a4,80007d50 <uartintr+0xe0>
    80007d80:	00008067          	ret
    80007d84:	00008067          	ret

0000000080007d88 <kinit>:
    80007d88:	fc010113          	addi	sp,sp,-64
    80007d8c:	02913423          	sd	s1,40(sp)
    80007d90:	fffff7b7          	lui	a5,0xfffff
    80007d94:	0000e497          	auipc	s1,0xe
    80007d98:	21b48493          	addi	s1,s1,539 # 80015faf <end+0xfff>
    80007d9c:	02813823          	sd	s0,48(sp)
    80007da0:	01313c23          	sd	s3,24(sp)
    80007da4:	00f4f4b3          	and	s1,s1,a5
    80007da8:	02113c23          	sd	ra,56(sp)
    80007dac:	03213023          	sd	s2,32(sp)
    80007db0:	01413823          	sd	s4,16(sp)
    80007db4:	01513423          	sd	s5,8(sp)
    80007db8:	04010413          	addi	s0,sp,64
    80007dbc:	000017b7          	lui	a5,0x1
    80007dc0:	01100993          	li	s3,17
    80007dc4:	00f487b3          	add	a5,s1,a5
    80007dc8:	01b99993          	slli	s3,s3,0x1b
    80007dcc:	06f9e063          	bltu	s3,a5,80007e2c <kinit+0xa4>
    80007dd0:	0000da97          	auipc	s5,0xd
    80007dd4:	1e0a8a93          	addi	s5,s5,480 # 80014fb0 <end>
    80007dd8:	0754ec63          	bltu	s1,s5,80007e50 <kinit+0xc8>
    80007ddc:	0734fa63          	bgeu	s1,s3,80007e50 <kinit+0xc8>
    80007de0:	00088a37          	lui	s4,0x88
    80007de4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007de8:	00004917          	auipc	s2,0x4
    80007dec:	e6890913          	addi	s2,s2,-408 # 8000bc50 <kmem>
    80007df0:	00ca1a13          	slli	s4,s4,0xc
    80007df4:	0140006f          	j	80007e08 <kinit+0x80>
    80007df8:	000017b7          	lui	a5,0x1
    80007dfc:	00f484b3          	add	s1,s1,a5
    80007e00:	0554e863          	bltu	s1,s5,80007e50 <kinit+0xc8>
    80007e04:	0534f663          	bgeu	s1,s3,80007e50 <kinit+0xc8>
    80007e08:	00001637          	lui	a2,0x1
    80007e0c:	00100593          	li	a1,1
    80007e10:	00048513          	mv	a0,s1
    80007e14:	00000097          	auipc	ra,0x0
    80007e18:	5e4080e7          	jalr	1508(ra) # 800083f8 <__memset>
    80007e1c:	00093783          	ld	a5,0(s2)
    80007e20:	00f4b023          	sd	a5,0(s1)
    80007e24:	00993023          	sd	s1,0(s2)
    80007e28:	fd4498e3          	bne	s1,s4,80007df8 <kinit+0x70>
    80007e2c:	03813083          	ld	ra,56(sp)
    80007e30:	03013403          	ld	s0,48(sp)
    80007e34:	02813483          	ld	s1,40(sp)
    80007e38:	02013903          	ld	s2,32(sp)
    80007e3c:	01813983          	ld	s3,24(sp)
    80007e40:	01013a03          	ld	s4,16(sp)
    80007e44:	00813a83          	ld	s5,8(sp)
    80007e48:	04010113          	addi	sp,sp,64
    80007e4c:	00008067          	ret
    80007e50:	00002517          	auipc	a0,0x2
    80007e54:	8e050513          	addi	a0,a0,-1824 # 80009730 <digits+0x18>
    80007e58:	fffff097          	auipc	ra,0xfffff
    80007e5c:	4b4080e7          	jalr	1204(ra) # 8000730c <panic>

0000000080007e60 <freerange>:
    80007e60:	fc010113          	addi	sp,sp,-64
    80007e64:	000017b7          	lui	a5,0x1
    80007e68:	02913423          	sd	s1,40(sp)
    80007e6c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007e70:	009504b3          	add	s1,a0,s1
    80007e74:	fffff537          	lui	a0,0xfffff
    80007e78:	02813823          	sd	s0,48(sp)
    80007e7c:	02113c23          	sd	ra,56(sp)
    80007e80:	03213023          	sd	s2,32(sp)
    80007e84:	01313c23          	sd	s3,24(sp)
    80007e88:	01413823          	sd	s4,16(sp)
    80007e8c:	01513423          	sd	s5,8(sp)
    80007e90:	01613023          	sd	s6,0(sp)
    80007e94:	04010413          	addi	s0,sp,64
    80007e98:	00a4f4b3          	and	s1,s1,a0
    80007e9c:	00f487b3          	add	a5,s1,a5
    80007ea0:	06f5e463          	bltu	a1,a5,80007f08 <freerange+0xa8>
    80007ea4:	0000da97          	auipc	s5,0xd
    80007ea8:	10ca8a93          	addi	s5,s5,268 # 80014fb0 <end>
    80007eac:	0954e263          	bltu	s1,s5,80007f30 <freerange+0xd0>
    80007eb0:	01100993          	li	s3,17
    80007eb4:	01b99993          	slli	s3,s3,0x1b
    80007eb8:	0734fc63          	bgeu	s1,s3,80007f30 <freerange+0xd0>
    80007ebc:	00058a13          	mv	s4,a1
    80007ec0:	00004917          	auipc	s2,0x4
    80007ec4:	d9090913          	addi	s2,s2,-624 # 8000bc50 <kmem>
    80007ec8:	00002b37          	lui	s6,0x2
    80007ecc:	0140006f          	j	80007ee0 <freerange+0x80>
    80007ed0:	000017b7          	lui	a5,0x1
    80007ed4:	00f484b3          	add	s1,s1,a5
    80007ed8:	0554ec63          	bltu	s1,s5,80007f30 <freerange+0xd0>
    80007edc:	0534fa63          	bgeu	s1,s3,80007f30 <freerange+0xd0>
    80007ee0:	00001637          	lui	a2,0x1
    80007ee4:	00100593          	li	a1,1
    80007ee8:	00048513          	mv	a0,s1
    80007eec:	00000097          	auipc	ra,0x0
    80007ef0:	50c080e7          	jalr	1292(ra) # 800083f8 <__memset>
    80007ef4:	00093703          	ld	a4,0(s2)
    80007ef8:	016487b3          	add	a5,s1,s6
    80007efc:	00e4b023          	sd	a4,0(s1)
    80007f00:	00993023          	sd	s1,0(s2)
    80007f04:	fcfa76e3          	bgeu	s4,a5,80007ed0 <freerange+0x70>
    80007f08:	03813083          	ld	ra,56(sp)
    80007f0c:	03013403          	ld	s0,48(sp)
    80007f10:	02813483          	ld	s1,40(sp)
    80007f14:	02013903          	ld	s2,32(sp)
    80007f18:	01813983          	ld	s3,24(sp)
    80007f1c:	01013a03          	ld	s4,16(sp)
    80007f20:	00813a83          	ld	s5,8(sp)
    80007f24:	00013b03          	ld	s6,0(sp)
    80007f28:	04010113          	addi	sp,sp,64
    80007f2c:	00008067          	ret
    80007f30:	00002517          	auipc	a0,0x2
    80007f34:	80050513          	addi	a0,a0,-2048 # 80009730 <digits+0x18>
    80007f38:	fffff097          	auipc	ra,0xfffff
    80007f3c:	3d4080e7          	jalr	980(ra) # 8000730c <panic>

0000000080007f40 <kfree>:
    80007f40:	fe010113          	addi	sp,sp,-32
    80007f44:	00813823          	sd	s0,16(sp)
    80007f48:	00113c23          	sd	ra,24(sp)
    80007f4c:	00913423          	sd	s1,8(sp)
    80007f50:	02010413          	addi	s0,sp,32
    80007f54:	03451793          	slli	a5,a0,0x34
    80007f58:	04079c63          	bnez	a5,80007fb0 <kfree+0x70>
    80007f5c:	0000d797          	auipc	a5,0xd
    80007f60:	05478793          	addi	a5,a5,84 # 80014fb0 <end>
    80007f64:	00050493          	mv	s1,a0
    80007f68:	04f56463          	bltu	a0,a5,80007fb0 <kfree+0x70>
    80007f6c:	01100793          	li	a5,17
    80007f70:	01b79793          	slli	a5,a5,0x1b
    80007f74:	02f57e63          	bgeu	a0,a5,80007fb0 <kfree+0x70>
    80007f78:	00001637          	lui	a2,0x1
    80007f7c:	00100593          	li	a1,1
    80007f80:	00000097          	auipc	ra,0x0
    80007f84:	478080e7          	jalr	1144(ra) # 800083f8 <__memset>
    80007f88:	00004797          	auipc	a5,0x4
    80007f8c:	cc878793          	addi	a5,a5,-824 # 8000bc50 <kmem>
    80007f90:	0007b703          	ld	a4,0(a5)
    80007f94:	01813083          	ld	ra,24(sp)
    80007f98:	01013403          	ld	s0,16(sp)
    80007f9c:	00e4b023          	sd	a4,0(s1)
    80007fa0:	0097b023          	sd	s1,0(a5)
    80007fa4:	00813483          	ld	s1,8(sp)
    80007fa8:	02010113          	addi	sp,sp,32
    80007fac:	00008067          	ret
    80007fb0:	00001517          	auipc	a0,0x1
    80007fb4:	78050513          	addi	a0,a0,1920 # 80009730 <digits+0x18>
    80007fb8:	fffff097          	auipc	ra,0xfffff
    80007fbc:	354080e7          	jalr	852(ra) # 8000730c <panic>

0000000080007fc0 <kalloc>:
    80007fc0:	fe010113          	addi	sp,sp,-32
    80007fc4:	00813823          	sd	s0,16(sp)
    80007fc8:	00913423          	sd	s1,8(sp)
    80007fcc:	00113c23          	sd	ra,24(sp)
    80007fd0:	02010413          	addi	s0,sp,32
    80007fd4:	00004797          	auipc	a5,0x4
    80007fd8:	c7c78793          	addi	a5,a5,-900 # 8000bc50 <kmem>
    80007fdc:	0007b483          	ld	s1,0(a5)
    80007fe0:	02048063          	beqz	s1,80008000 <kalloc+0x40>
    80007fe4:	0004b703          	ld	a4,0(s1)
    80007fe8:	00001637          	lui	a2,0x1
    80007fec:	00500593          	li	a1,5
    80007ff0:	00048513          	mv	a0,s1
    80007ff4:	00e7b023          	sd	a4,0(a5)
    80007ff8:	00000097          	auipc	ra,0x0
    80007ffc:	400080e7          	jalr	1024(ra) # 800083f8 <__memset>
    80008000:	01813083          	ld	ra,24(sp)
    80008004:	01013403          	ld	s0,16(sp)
    80008008:	00048513          	mv	a0,s1
    8000800c:	00813483          	ld	s1,8(sp)
    80008010:	02010113          	addi	sp,sp,32
    80008014:	00008067          	ret

0000000080008018 <initlock>:
    80008018:	ff010113          	addi	sp,sp,-16
    8000801c:	00813423          	sd	s0,8(sp)
    80008020:	01010413          	addi	s0,sp,16
    80008024:	00813403          	ld	s0,8(sp)
    80008028:	00b53423          	sd	a1,8(a0)
    8000802c:	00052023          	sw	zero,0(a0)
    80008030:	00053823          	sd	zero,16(a0)
    80008034:	01010113          	addi	sp,sp,16
    80008038:	00008067          	ret

000000008000803c <acquire>:
    8000803c:	fe010113          	addi	sp,sp,-32
    80008040:	00813823          	sd	s0,16(sp)
    80008044:	00913423          	sd	s1,8(sp)
    80008048:	00113c23          	sd	ra,24(sp)
    8000804c:	01213023          	sd	s2,0(sp)
    80008050:	02010413          	addi	s0,sp,32
    80008054:	00050493          	mv	s1,a0
    80008058:	10002973          	csrr	s2,sstatus
    8000805c:	100027f3          	csrr	a5,sstatus
    80008060:	ffd7f793          	andi	a5,a5,-3
    80008064:	10079073          	csrw	sstatus,a5
    80008068:	fffff097          	auipc	ra,0xfffff
    8000806c:	8e0080e7          	jalr	-1824(ra) # 80006948 <mycpu>
    80008070:	07852783          	lw	a5,120(a0)
    80008074:	06078e63          	beqz	a5,800080f0 <acquire+0xb4>
    80008078:	fffff097          	auipc	ra,0xfffff
    8000807c:	8d0080e7          	jalr	-1840(ra) # 80006948 <mycpu>
    80008080:	07852783          	lw	a5,120(a0)
    80008084:	0004a703          	lw	a4,0(s1)
    80008088:	0017879b          	addiw	a5,a5,1
    8000808c:	06f52c23          	sw	a5,120(a0)
    80008090:	04071063          	bnez	a4,800080d0 <acquire+0x94>
    80008094:	00100713          	li	a4,1
    80008098:	00070793          	mv	a5,a4
    8000809c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800080a0:	0007879b          	sext.w	a5,a5
    800080a4:	fe079ae3          	bnez	a5,80008098 <acquire+0x5c>
    800080a8:	0ff0000f          	fence
    800080ac:	fffff097          	auipc	ra,0xfffff
    800080b0:	89c080e7          	jalr	-1892(ra) # 80006948 <mycpu>
    800080b4:	01813083          	ld	ra,24(sp)
    800080b8:	01013403          	ld	s0,16(sp)
    800080bc:	00a4b823          	sd	a0,16(s1)
    800080c0:	00013903          	ld	s2,0(sp)
    800080c4:	00813483          	ld	s1,8(sp)
    800080c8:	02010113          	addi	sp,sp,32
    800080cc:	00008067          	ret
    800080d0:	0104b903          	ld	s2,16(s1)
    800080d4:	fffff097          	auipc	ra,0xfffff
    800080d8:	874080e7          	jalr	-1932(ra) # 80006948 <mycpu>
    800080dc:	faa91ce3          	bne	s2,a0,80008094 <acquire+0x58>
    800080e0:	00001517          	auipc	a0,0x1
    800080e4:	65850513          	addi	a0,a0,1624 # 80009738 <digits+0x20>
    800080e8:	fffff097          	auipc	ra,0xfffff
    800080ec:	224080e7          	jalr	548(ra) # 8000730c <panic>
    800080f0:	00195913          	srli	s2,s2,0x1
    800080f4:	fffff097          	auipc	ra,0xfffff
    800080f8:	854080e7          	jalr	-1964(ra) # 80006948 <mycpu>
    800080fc:	00197913          	andi	s2,s2,1
    80008100:	07252e23          	sw	s2,124(a0)
    80008104:	f75ff06f          	j	80008078 <acquire+0x3c>

0000000080008108 <release>:
    80008108:	fe010113          	addi	sp,sp,-32
    8000810c:	00813823          	sd	s0,16(sp)
    80008110:	00113c23          	sd	ra,24(sp)
    80008114:	00913423          	sd	s1,8(sp)
    80008118:	01213023          	sd	s2,0(sp)
    8000811c:	02010413          	addi	s0,sp,32
    80008120:	00052783          	lw	a5,0(a0)
    80008124:	00079a63          	bnez	a5,80008138 <release+0x30>
    80008128:	00001517          	auipc	a0,0x1
    8000812c:	61850513          	addi	a0,a0,1560 # 80009740 <digits+0x28>
    80008130:	fffff097          	auipc	ra,0xfffff
    80008134:	1dc080e7          	jalr	476(ra) # 8000730c <panic>
    80008138:	01053903          	ld	s2,16(a0)
    8000813c:	00050493          	mv	s1,a0
    80008140:	fffff097          	auipc	ra,0xfffff
    80008144:	808080e7          	jalr	-2040(ra) # 80006948 <mycpu>
    80008148:	fea910e3          	bne	s2,a0,80008128 <release+0x20>
    8000814c:	0004b823          	sd	zero,16(s1)
    80008150:	0ff0000f          	fence
    80008154:	0f50000f          	fence	iorw,ow
    80008158:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000815c:	ffffe097          	auipc	ra,0xffffe
    80008160:	7ec080e7          	jalr	2028(ra) # 80006948 <mycpu>
    80008164:	100027f3          	csrr	a5,sstatus
    80008168:	0027f793          	andi	a5,a5,2
    8000816c:	04079a63          	bnez	a5,800081c0 <release+0xb8>
    80008170:	07852783          	lw	a5,120(a0)
    80008174:	02f05e63          	blez	a5,800081b0 <release+0xa8>
    80008178:	fff7871b          	addiw	a4,a5,-1
    8000817c:	06e52c23          	sw	a4,120(a0)
    80008180:	00071c63          	bnez	a4,80008198 <release+0x90>
    80008184:	07c52783          	lw	a5,124(a0)
    80008188:	00078863          	beqz	a5,80008198 <release+0x90>
    8000818c:	100027f3          	csrr	a5,sstatus
    80008190:	0027e793          	ori	a5,a5,2
    80008194:	10079073          	csrw	sstatus,a5
    80008198:	01813083          	ld	ra,24(sp)
    8000819c:	01013403          	ld	s0,16(sp)
    800081a0:	00813483          	ld	s1,8(sp)
    800081a4:	00013903          	ld	s2,0(sp)
    800081a8:	02010113          	addi	sp,sp,32
    800081ac:	00008067          	ret
    800081b0:	00001517          	auipc	a0,0x1
    800081b4:	5b050513          	addi	a0,a0,1456 # 80009760 <digits+0x48>
    800081b8:	fffff097          	auipc	ra,0xfffff
    800081bc:	154080e7          	jalr	340(ra) # 8000730c <panic>
    800081c0:	00001517          	auipc	a0,0x1
    800081c4:	58850513          	addi	a0,a0,1416 # 80009748 <digits+0x30>
    800081c8:	fffff097          	auipc	ra,0xfffff
    800081cc:	144080e7          	jalr	324(ra) # 8000730c <panic>

00000000800081d0 <holding>:
    800081d0:	00052783          	lw	a5,0(a0)
    800081d4:	00079663          	bnez	a5,800081e0 <holding+0x10>
    800081d8:	00000513          	li	a0,0
    800081dc:	00008067          	ret
    800081e0:	fe010113          	addi	sp,sp,-32
    800081e4:	00813823          	sd	s0,16(sp)
    800081e8:	00913423          	sd	s1,8(sp)
    800081ec:	00113c23          	sd	ra,24(sp)
    800081f0:	02010413          	addi	s0,sp,32
    800081f4:	01053483          	ld	s1,16(a0)
    800081f8:	ffffe097          	auipc	ra,0xffffe
    800081fc:	750080e7          	jalr	1872(ra) # 80006948 <mycpu>
    80008200:	01813083          	ld	ra,24(sp)
    80008204:	01013403          	ld	s0,16(sp)
    80008208:	40a48533          	sub	a0,s1,a0
    8000820c:	00153513          	seqz	a0,a0
    80008210:	00813483          	ld	s1,8(sp)
    80008214:	02010113          	addi	sp,sp,32
    80008218:	00008067          	ret

000000008000821c <push_off>:
    8000821c:	fe010113          	addi	sp,sp,-32
    80008220:	00813823          	sd	s0,16(sp)
    80008224:	00113c23          	sd	ra,24(sp)
    80008228:	00913423          	sd	s1,8(sp)
    8000822c:	02010413          	addi	s0,sp,32
    80008230:	100024f3          	csrr	s1,sstatus
    80008234:	100027f3          	csrr	a5,sstatus
    80008238:	ffd7f793          	andi	a5,a5,-3
    8000823c:	10079073          	csrw	sstatus,a5
    80008240:	ffffe097          	auipc	ra,0xffffe
    80008244:	708080e7          	jalr	1800(ra) # 80006948 <mycpu>
    80008248:	07852783          	lw	a5,120(a0)
    8000824c:	02078663          	beqz	a5,80008278 <push_off+0x5c>
    80008250:	ffffe097          	auipc	ra,0xffffe
    80008254:	6f8080e7          	jalr	1784(ra) # 80006948 <mycpu>
    80008258:	07852783          	lw	a5,120(a0)
    8000825c:	01813083          	ld	ra,24(sp)
    80008260:	01013403          	ld	s0,16(sp)
    80008264:	0017879b          	addiw	a5,a5,1
    80008268:	06f52c23          	sw	a5,120(a0)
    8000826c:	00813483          	ld	s1,8(sp)
    80008270:	02010113          	addi	sp,sp,32
    80008274:	00008067          	ret
    80008278:	0014d493          	srli	s1,s1,0x1
    8000827c:	ffffe097          	auipc	ra,0xffffe
    80008280:	6cc080e7          	jalr	1740(ra) # 80006948 <mycpu>
    80008284:	0014f493          	andi	s1,s1,1
    80008288:	06952e23          	sw	s1,124(a0)
    8000828c:	fc5ff06f          	j	80008250 <push_off+0x34>

0000000080008290 <pop_off>:
    80008290:	ff010113          	addi	sp,sp,-16
    80008294:	00813023          	sd	s0,0(sp)
    80008298:	00113423          	sd	ra,8(sp)
    8000829c:	01010413          	addi	s0,sp,16
    800082a0:	ffffe097          	auipc	ra,0xffffe
    800082a4:	6a8080e7          	jalr	1704(ra) # 80006948 <mycpu>
    800082a8:	100027f3          	csrr	a5,sstatus
    800082ac:	0027f793          	andi	a5,a5,2
    800082b0:	04079663          	bnez	a5,800082fc <pop_off+0x6c>
    800082b4:	07852783          	lw	a5,120(a0)
    800082b8:	02f05a63          	blez	a5,800082ec <pop_off+0x5c>
    800082bc:	fff7871b          	addiw	a4,a5,-1
    800082c0:	06e52c23          	sw	a4,120(a0)
    800082c4:	00071c63          	bnez	a4,800082dc <pop_off+0x4c>
    800082c8:	07c52783          	lw	a5,124(a0)
    800082cc:	00078863          	beqz	a5,800082dc <pop_off+0x4c>
    800082d0:	100027f3          	csrr	a5,sstatus
    800082d4:	0027e793          	ori	a5,a5,2
    800082d8:	10079073          	csrw	sstatus,a5
    800082dc:	00813083          	ld	ra,8(sp)
    800082e0:	00013403          	ld	s0,0(sp)
    800082e4:	01010113          	addi	sp,sp,16
    800082e8:	00008067          	ret
    800082ec:	00001517          	auipc	a0,0x1
    800082f0:	47450513          	addi	a0,a0,1140 # 80009760 <digits+0x48>
    800082f4:	fffff097          	auipc	ra,0xfffff
    800082f8:	018080e7          	jalr	24(ra) # 8000730c <panic>
    800082fc:	00001517          	auipc	a0,0x1
    80008300:	44c50513          	addi	a0,a0,1100 # 80009748 <digits+0x30>
    80008304:	fffff097          	auipc	ra,0xfffff
    80008308:	008080e7          	jalr	8(ra) # 8000730c <panic>

000000008000830c <push_on>:
    8000830c:	fe010113          	addi	sp,sp,-32
    80008310:	00813823          	sd	s0,16(sp)
    80008314:	00113c23          	sd	ra,24(sp)
    80008318:	00913423          	sd	s1,8(sp)
    8000831c:	02010413          	addi	s0,sp,32
    80008320:	100024f3          	csrr	s1,sstatus
    80008324:	100027f3          	csrr	a5,sstatus
    80008328:	0027e793          	ori	a5,a5,2
    8000832c:	10079073          	csrw	sstatus,a5
    80008330:	ffffe097          	auipc	ra,0xffffe
    80008334:	618080e7          	jalr	1560(ra) # 80006948 <mycpu>
    80008338:	07852783          	lw	a5,120(a0)
    8000833c:	02078663          	beqz	a5,80008368 <push_on+0x5c>
    80008340:	ffffe097          	auipc	ra,0xffffe
    80008344:	608080e7          	jalr	1544(ra) # 80006948 <mycpu>
    80008348:	07852783          	lw	a5,120(a0)
    8000834c:	01813083          	ld	ra,24(sp)
    80008350:	01013403          	ld	s0,16(sp)
    80008354:	0017879b          	addiw	a5,a5,1
    80008358:	06f52c23          	sw	a5,120(a0)
    8000835c:	00813483          	ld	s1,8(sp)
    80008360:	02010113          	addi	sp,sp,32
    80008364:	00008067          	ret
    80008368:	0014d493          	srli	s1,s1,0x1
    8000836c:	ffffe097          	auipc	ra,0xffffe
    80008370:	5dc080e7          	jalr	1500(ra) # 80006948 <mycpu>
    80008374:	0014f493          	andi	s1,s1,1
    80008378:	06952e23          	sw	s1,124(a0)
    8000837c:	fc5ff06f          	j	80008340 <push_on+0x34>

0000000080008380 <pop_on>:
    80008380:	ff010113          	addi	sp,sp,-16
    80008384:	00813023          	sd	s0,0(sp)
    80008388:	00113423          	sd	ra,8(sp)
    8000838c:	01010413          	addi	s0,sp,16
    80008390:	ffffe097          	auipc	ra,0xffffe
    80008394:	5b8080e7          	jalr	1464(ra) # 80006948 <mycpu>
    80008398:	100027f3          	csrr	a5,sstatus
    8000839c:	0027f793          	andi	a5,a5,2
    800083a0:	04078463          	beqz	a5,800083e8 <pop_on+0x68>
    800083a4:	07852783          	lw	a5,120(a0)
    800083a8:	02f05863          	blez	a5,800083d8 <pop_on+0x58>
    800083ac:	fff7879b          	addiw	a5,a5,-1
    800083b0:	06f52c23          	sw	a5,120(a0)
    800083b4:	07853783          	ld	a5,120(a0)
    800083b8:	00079863          	bnez	a5,800083c8 <pop_on+0x48>
    800083bc:	100027f3          	csrr	a5,sstatus
    800083c0:	ffd7f793          	andi	a5,a5,-3
    800083c4:	10079073          	csrw	sstatus,a5
    800083c8:	00813083          	ld	ra,8(sp)
    800083cc:	00013403          	ld	s0,0(sp)
    800083d0:	01010113          	addi	sp,sp,16
    800083d4:	00008067          	ret
    800083d8:	00001517          	auipc	a0,0x1
    800083dc:	3b050513          	addi	a0,a0,944 # 80009788 <digits+0x70>
    800083e0:	fffff097          	auipc	ra,0xfffff
    800083e4:	f2c080e7          	jalr	-212(ra) # 8000730c <panic>
    800083e8:	00001517          	auipc	a0,0x1
    800083ec:	38050513          	addi	a0,a0,896 # 80009768 <digits+0x50>
    800083f0:	fffff097          	auipc	ra,0xfffff
    800083f4:	f1c080e7          	jalr	-228(ra) # 8000730c <panic>

00000000800083f8 <__memset>:
    800083f8:	ff010113          	addi	sp,sp,-16
    800083fc:	00813423          	sd	s0,8(sp)
    80008400:	01010413          	addi	s0,sp,16
    80008404:	1a060e63          	beqz	a2,800085c0 <__memset+0x1c8>
    80008408:	40a007b3          	neg	a5,a0
    8000840c:	0077f793          	andi	a5,a5,7
    80008410:	00778693          	addi	a3,a5,7
    80008414:	00b00813          	li	a6,11
    80008418:	0ff5f593          	andi	a1,a1,255
    8000841c:	fff6071b          	addiw	a4,a2,-1
    80008420:	1b06e663          	bltu	a3,a6,800085cc <__memset+0x1d4>
    80008424:	1cd76463          	bltu	a4,a3,800085ec <__memset+0x1f4>
    80008428:	1a078e63          	beqz	a5,800085e4 <__memset+0x1ec>
    8000842c:	00b50023          	sb	a1,0(a0)
    80008430:	00100713          	li	a4,1
    80008434:	1ae78463          	beq	a5,a4,800085dc <__memset+0x1e4>
    80008438:	00b500a3          	sb	a1,1(a0)
    8000843c:	00200713          	li	a4,2
    80008440:	1ae78a63          	beq	a5,a4,800085f4 <__memset+0x1fc>
    80008444:	00b50123          	sb	a1,2(a0)
    80008448:	00300713          	li	a4,3
    8000844c:	18e78463          	beq	a5,a4,800085d4 <__memset+0x1dc>
    80008450:	00b501a3          	sb	a1,3(a0)
    80008454:	00400713          	li	a4,4
    80008458:	1ae78263          	beq	a5,a4,800085fc <__memset+0x204>
    8000845c:	00b50223          	sb	a1,4(a0)
    80008460:	00500713          	li	a4,5
    80008464:	1ae78063          	beq	a5,a4,80008604 <__memset+0x20c>
    80008468:	00b502a3          	sb	a1,5(a0)
    8000846c:	00700713          	li	a4,7
    80008470:	18e79e63          	bne	a5,a4,8000860c <__memset+0x214>
    80008474:	00b50323          	sb	a1,6(a0)
    80008478:	00700e93          	li	t4,7
    8000847c:	00859713          	slli	a4,a1,0x8
    80008480:	00e5e733          	or	a4,a1,a4
    80008484:	01059e13          	slli	t3,a1,0x10
    80008488:	01c76e33          	or	t3,a4,t3
    8000848c:	01859313          	slli	t1,a1,0x18
    80008490:	006e6333          	or	t1,t3,t1
    80008494:	02059893          	slli	a7,a1,0x20
    80008498:	40f60e3b          	subw	t3,a2,a5
    8000849c:	011368b3          	or	a7,t1,a7
    800084a0:	02859813          	slli	a6,a1,0x28
    800084a4:	0108e833          	or	a6,a7,a6
    800084a8:	03059693          	slli	a3,a1,0x30
    800084ac:	003e589b          	srliw	a7,t3,0x3
    800084b0:	00d866b3          	or	a3,a6,a3
    800084b4:	03859713          	slli	a4,a1,0x38
    800084b8:	00389813          	slli	a6,a7,0x3
    800084bc:	00f507b3          	add	a5,a0,a5
    800084c0:	00e6e733          	or	a4,a3,a4
    800084c4:	000e089b          	sext.w	a7,t3
    800084c8:	00f806b3          	add	a3,a6,a5
    800084cc:	00e7b023          	sd	a4,0(a5)
    800084d0:	00878793          	addi	a5,a5,8
    800084d4:	fed79ce3          	bne	a5,a3,800084cc <__memset+0xd4>
    800084d8:	ff8e7793          	andi	a5,t3,-8
    800084dc:	0007871b          	sext.w	a4,a5
    800084e0:	01d787bb          	addw	a5,a5,t4
    800084e4:	0ce88e63          	beq	a7,a4,800085c0 <__memset+0x1c8>
    800084e8:	00f50733          	add	a4,a0,a5
    800084ec:	00b70023          	sb	a1,0(a4)
    800084f0:	0017871b          	addiw	a4,a5,1
    800084f4:	0cc77663          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    800084f8:	00e50733          	add	a4,a0,a4
    800084fc:	00b70023          	sb	a1,0(a4)
    80008500:	0027871b          	addiw	a4,a5,2
    80008504:	0ac77e63          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    80008508:	00e50733          	add	a4,a0,a4
    8000850c:	00b70023          	sb	a1,0(a4)
    80008510:	0037871b          	addiw	a4,a5,3
    80008514:	0ac77663          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    80008518:	00e50733          	add	a4,a0,a4
    8000851c:	00b70023          	sb	a1,0(a4)
    80008520:	0047871b          	addiw	a4,a5,4
    80008524:	08c77e63          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    80008528:	00e50733          	add	a4,a0,a4
    8000852c:	00b70023          	sb	a1,0(a4)
    80008530:	0057871b          	addiw	a4,a5,5
    80008534:	08c77663          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    80008538:	00e50733          	add	a4,a0,a4
    8000853c:	00b70023          	sb	a1,0(a4)
    80008540:	0067871b          	addiw	a4,a5,6
    80008544:	06c77e63          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    80008548:	00e50733          	add	a4,a0,a4
    8000854c:	00b70023          	sb	a1,0(a4)
    80008550:	0077871b          	addiw	a4,a5,7
    80008554:	06c77663          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    80008558:	00e50733          	add	a4,a0,a4
    8000855c:	00b70023          	sb	a1,0(a4)
    80008560:	0087871b          	addiw	a4,a5,8
    80008564:	04c77e63          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    80008568:	00e50733          	add	a4,a0,a4
    8000856c:	00b70023          	sb	a1,0(a4)
    80008570:	0097871b          	addiw	a4,a5,9
    80008574:	04c77663          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    80008578:	00e50733          	add	a4,a0,a4
    8000857c:	00b70023          	sb	a1,0(a4)
    80008580:	00a7871b          	addiw	a4,a5,10
    80008584:	02c77e63          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    80008588:	00e50733          	add	a4,a0,a4
    8000858c:	00b70023          	sb	a1,0(a4)
    80008590:	00b7871b          	addiw	a4,a5,11
    80008594:	02c77663          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    80008598:	00e50733          	add	a4,a0,a4
    8000859c:	00b70023          	sb	a1,0(a4)
    800085a0:	00c7871b          	addiw	a4,a5,12
    800085a4:	00c77e63          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    800085a8:	00e50733          	add	a4,a0,a4
    800085ac:	00b70023          	sb	a1,0(a4)
    800085b0:	00d7879b          	addiw	a5,a5,13
    800085b4:	00c7f663          	bgeu	a5,a2,800085c0 <__memset+0x1c8>
    800085b8:	00f507b3          	add	a5,a0,a5
    800085bc:	00b78023          	sb	a1,0(a5)
    800085c0:	00813403          	ld	s0,8(sp)
    800085c4:	01010113          	addi	sp,sp,16
    800085c8:	00008067          	ret
    800085cc:	00b00693          	li	a3,11
    800085d0:	e55ff06f          	j	80008424 <__memset+0x2c>
    800085d4:	00300e93          	li	t4,3
    800085d8:	ea5ff06f          	j	8000847c <__memset+0x84>
    800085dc:	00100e93          	li	t4,1
    800085e0:	e9dff06f          	j	8000847c <__memset+0x84>
    800085e4:	00000e93          	li	t4,0
    800085e8:	e95ff06f          	j	8000847c <__memset+0x84>
    800085ec:	00000793          	li	a5,0
    800085f0:	ef9ff06f          	j	800084e8 <__memset+0xf0>
    800085f4:	00200e93          	li	t4,2
    800085f8:	e85ff06f          	j	8000847c <__memset+0x84>
    800085fc:	00400e93          	li	t4,4
    80008600:	e7dff06f          	j	8000847c <__memset+0x84>
    80008604:	00500e93          	li	t4,5
    80008608:	e75ff06f          	j	8000847c <__memset+0x84>
    8000860c:	00600e93          	li	t4,6
    80008610:	e6dff06f          	j	8000847c <__memset+0x84>

0000000080008614 <__memmove>:
    80008614:	ff010113          	addi	sp,sp,-16
    80008618:	00813423          	sd	s0,8(sp)
    8000861c:	01010413          	addi	s0,sp,16
    80008620:	0e060863          	beqz	a2,80008710 <__memmove+0xfc>
    80008624:	fff6069b          	addiw	a3,a2,-1
    80008628:	0006881b          	sext.w	a6,a3
    8000862c:	0ea5e863          	bltu	a1,a0,8000871c <__memmove+0x108>
    80008630:	00758713          	addi	a4,a1,7
    80008634:	00a5e7b3          	or	a5,a1,a0
    80008638:	40a70733          	sub	a4,a4,a0
    8000863c:	0077f793          	andi	a5,a5,7
    80008640:	00f73713          	sltiu	a4,a4,15
    80008644:	00174713          	xori	a4,a4,1
    80008648:	0017b793          	seqz	a5,a5
    8000864c:	00e7f7b3          	and	a5,a5,a4
    80008650:	10078863          	beqz	a5,80008760 <__memmove+0x14c>
    80008654:	00900793          	li	a5,9
    80008658:	1107f463          	bgeu	a5,a6,80008760 <__memmove+0x14c>
    8000865c:	0036581b          	srliw	a6,a2,0x3
    80008660:	fff8081b          	addiw	a6,a6,-1
    80008664:	02081813          	slli	a6,a6,0x20
    80008668:	01d85893          	srli	a7,a6,0x1d
    8000866c:	00858813          	addi	a6,a1,8
    80008670:	00058793          	mv	a5,a1
    80008674:	00050713          	mv	a4,a0
    80008678:	01088833          	add	a6,a7,a6
    8000867c:	0007b883          	ld	a7,0(a5)
    80008680:	00878793          	addi	a5,a5,8
    80008684:	00870713          	addi	a4,a4,8
    80008688:	ff173c23          	sd	a7,-8(a4)
    8000868c:	ff0798e3          	bne	a5,a6,8000867c <__memmove+0x68>
    80008690:	ff867713          	andi	a4,a2,-8
    80008694:	02071793          	slli	a5,a4,0x20
    80008698:	0207d793          	srli	a5,a5,0x20
    8000869c:	00f585b3          	add	a1,a1,a5
    800086a0:	40e686bb          	subw	a3,a3,a4
    800086a4:	00f507b3          	add	a5,a0,a5
    800086a8:	06e60463          	beq	a2,a4,80008710 <__memmove+0xfc>
    800086ac:	0005c703          	lbu	a4,0(a1)
    800086b0:	00e78023          	sb	a4,0(a5)
    800086b4:	04068e63          	beqz	a3,80008710 <__memmove+0xfc>
    800086b8:	0015c603          	lbu	a2,1(a1)
    800086bc:	00100713          	li	a4,1
    800086c0:	00c780a3          	sb	a2,1(a5)
    800086c4:	04e68663          	beq	a3,a4,80008710 <__memmove+0xfc>
    800086c8:	0025c603          	lbu	a2,2(a1)
    800086cc:	00200713          	li	a4,2
    800086d0:	00c78123          	sb	a2,2(a5)
    800086d4:	02e68e63          	beq	a3,a4,80008710 <__memmove+0xfc>
    800086d8:	0035c603          	lbu	a2,3(a1)
    800086dc:	00300713          	li	a4,3
    800086e0:	00c781a3          	sb	a2,3(a5)
    800086e4:	02e68663          	beq	a3,a4,80008710 <__memmove+0xfc>
    800086e8:	0045c603          	lbu	a2,4(a1)
    800086ec:	00400713          	li	a4,4
    800086f0:	00c78223          	sb	a2,4(a5)
    800086f4:	00e68e63          	beq	a3,a4,80008710 <__memmove+0xfc>
    800086f8:	0055c603          	lbu	a2,5(a1)
    800086fc:	00500713          	li	a4,5
    80008700:	00c782a3          	sb	a2,5(a5)
    80008704:	00e68663          	beq	a3,a4,80008710 <__memmove+0xfc>
    80008708:	0065c703          	lbu	a4,6(a1)
    8000870c:	00e78323          	sb	a4,6(a5)
    80008710:	00813403          	ld	s0,8(sp)
    80008714:	01010113          	addi	sp,sp,16
    80008718:	00008067          	ret
    8000871c:	02061713          	slli	a4,a2,0x20
    80008720:	02075713          	srli	a4,a4,0x20
    80008724:	00e587b3          	add	a5,a1,a4
    80008728:	f0f574e3          	bgeu	a0,a5,80008630 <__memmove+0x1c>
    8000872c:	02069613          	slli	a2,a3,0x20
    80008730:	02065613          	srli	a2,a2,0x20
    80008734:	fff64613          	not	a2,a2
    80008738:	00e50733          	add	a4,a0,a4
    8000873c:	00c78633          	add	a2,a5,a2
    80008740:	fff7c683          	lbu	a3,-1(a5)
    80008744:	fff78793          	addi	a5,a5,-1
    80008748:	fff70713          	addi	a4,a4,-1
    8000874c:	00d70023          	sb	a3,0(a4)
    80008750:	fec798e3          	bne	a5,a2,80008740 <__memmove+0x12c>
    80008754:	00813403          	ld	s0,8(sp)
    80008758:	01010113          	addi	sp,sp,16
    8000875c:	00008067          	ret
    80008760:	02069713          	slli	a4,a3,0x20
    80008764:	02075713          	srli	a4,a4,0x20
    80008768:	00170713          	addi	a4,a4,1
    8000876c:	00e50733          	add	a4,a0,a4
    80008770:	00050793          	mv	a5,a0
    80008774:	0005c683          	lbu	a3,0(a1)
    80008778:	00178793          	addi	a5,a5,1
    8000877c:	00158593          	addi	a1,a1,1
    80008780:	fed78fa3          	sb	a3,-1(a5)
    80008784:	fee798e3          	bne	a5,a4,80008774 <__memmove+0x160>
    80008788:	f89ff06f          	j	80008710 <__memmove+0xfc>
	...
